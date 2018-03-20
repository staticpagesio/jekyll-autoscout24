Feature: AutoScout24
  In order to use catalog data in my site
  As a site's operator
  I want to use autoscout24.xml in my site

  Scenario: parse 'vehicle/dealer_id' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <dealer_id>2142121262</dealer_id>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.dealer_id}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see "2142121262" in "_site/index.html"

  Scenario: parse 'vehicle/vehicle_id' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <vehicle_id>312584131</vehicle_id>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.vehicle_id}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see "312584131" in "_site/index.html"

  Scenario: parse 'vehicle/visibility' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <visibility>Al pubblico</visibility>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.visibility}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see "Al pubblico" in "_site/index.html"

  Scenario: parse 'vehicle/type' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <type>C</type>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.type}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see "C" in "_site/index.html"

  Scenario: parse 'vehicle/category' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <category>Usato</category>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.category}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see "Usato" in "_site/index.html"

  Scenario: parse 'vehicle/body' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <body>Furgoni/Van</body>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.body}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see "Furgoni/Van" in "_site/index.html"