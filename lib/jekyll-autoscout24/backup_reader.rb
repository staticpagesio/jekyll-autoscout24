
module Jekyll
  module AutoScout24
    class BackupReader
      attr_reader :site, :content

      # ctor
      def initialize(site)
        @site = site
      end

      def read!(dir)
        # Load XML data from the backup file
        backup = Ox.load_file("#{dir}/autoscout24.xml")
        # Locate all vehicle nodes in the backup document
        vehicles, nodes = [], backup.locate('stx3/vehicle_data/vehicles/vehicle')
        # Transform each node found into an instance of Entry drop
        nodes.each { |n| vehicles << Entry.new(n) }
        # Merge current site data with the list of vehicles from the backup
        @site.data.merge!('autoscout24' => vehicles) unless vehicles.empty?
      end
    end

    # A drop in liquid is a class which allows you to export DOM like things to liquid.
    # Methods of drops are callable.
    # The main use for liquid drops is to implement lazy loaded objects.
    # If you would like to make data available to the web designers which you don't want loaded unless needed then
    # a drop is a great way to do that.
    class Entry < Liquid::Drop
      attr_reader :node

      # ctor
      def initialize(node)
        @node = node
      end

      # Catch all method to be flexible and adaptable based on the XML structure provided.
      def liquid_method_missing(name)
        # lookup child node by name
        found = @node.locate(name).first
        # no match or empty node, therefore nil
        return nil if found.nil? || found.nodes.empty?
        # special processing for prices collection
        return Prices.new(found) if name == 'prices'
        # special processing for equipments collection
        return Equipments.new(found) if name == 'equipments'
        # special processing for images collection
        return Images.new(found) if name == 'images'
        # special processing for product_bookings collection
        return ProductBookings.new(found) if name == 'product_bookings'
        # either text or recurse
        found.text === nil ? Entry.new(found) : found.text
      end
    end

    class ProductBookings < Liquid::Drop
      include Enumerable

      attr_reader :node

      # ctor
      def initialize(node)
        @node = node
      end

      def each
        @node.locate("product").each do |n|
          yield Entry.new(n)
        end
      end
    end

    class Images < Liquid::Drop
      include Enumerable

      attr_reader :node

      # ctor
      def initialize(node)
        @node = node
      end

      def each
        @node.locate("image").each do |n|
          yield Entry.new(n)
        end
      end
    end

    class Equipments < Liquid::Drop
      include Enumerable

      attr_reader :node

      # ctor
      def initialize(node)
        @node = node
      end

      def each
        @node.locate("equipment").each do |n|
          yield Entry.new(n)
        end
      end
    end

    class Prices < Liquid::Drop
      include Enumerable

      attr_reader :node

      # ctor
      def initialize(node)
        @node = node
      end

      def each
        @node.locate('price').each do |n|
          yield Entry.new(n)
        end
      end
    end
  end
end

# Plugin is activated after site data has been read and loaded from disk
Jekyll::Hooks.register :site, :post_read do |site|
  # We modify site.data collection in-place
  Jekyll::AutoScout24::BackupReader.new(site).read!(site.config["data_dir"])
end