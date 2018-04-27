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

  Scenario: parse 'vehicle/model' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <model>B 220</model>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.model}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "B 220" in "_site/index.html"

  Scenario: parse 'vehicle/version' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <version>d Automatic Premium AMG * Panorama * Led * Camera</version>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.version}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "d Automatic Premium AMG * Panorama * Led * Camera" in "_site/index.html"

  Scenario: parse 'vehicle/body_colorgroup' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <body_colorgroup>Bianco</body_colorgroup>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.body_colorgroup}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "Bianco" in "_site/index.html"

  Scenario: parse 'vehicle/interior_color' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <interior_color>Nero</interior_color>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.interior_color}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "Nero" in "_site/index.html"

  Scenario: parse 'vehicle/covering' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <covering>Pelle parziale</covering>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.covering}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "Pelle parziale" in "_site/index.html"

  Scenario: parse 'vehicle/doors' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <doors>5</doors>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.doors}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "5" in "_site/index.html"

  Scenario: parse 'vehicle/gear_type' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <gear_type>Automatico</gear_type>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.gear_type}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "Automatico" in "_site/index.html"

  Scenario: parse 'vehicle/gears' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <gears>7</gears>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.gears}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "7" in "_site/index.html"

  Scenario: parse 'vehicle/fuel_type' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <fuel_type>Diesel</fuel_type>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.fuel_type}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "Diesel" in "_site/index.html"

  Scenario: parse empty 'vehicle/fuel_types' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <fuel_types />
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.fuel_types}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "" in "_site/index.html"

  Scenario: parse 'vehicle/capacity' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <capacity>2143</capacity>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.capacity}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "2143" in "_site/index.html"

  Scenario: parse 'vehicle/kilowatt' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <kilowatt>130</kilowatt>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.kilowatt}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "130" in "_site/index.html"

  Scenario: parse 'vehicle/cylinder' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <cylinder>4</cylinder>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.cylinder}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "4" in "_site/index.html"

  Scenario: parse 'vehicle/consumption/liquid/urban' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <consumption>
              <liquid>
                <urban>49</urban>
              </liquid>
            </consumption>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.consumption.liquid.urban}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "49" in "_site/index.html"

  Scenario: parse 'vehicle/consumption/liquid/extra_urban' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <consumption>
              <liquid>
                <extra_urban>36</extra_urban>
              </liquid>
            </consumption>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.consumption.liquid.extra_urban}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "36" in "_site/index.html"

  Scenario: parse 'vehicle/consumption/liquid/combined' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <consumption>
              <liquid>
                <combined>41</combined>
              </liquid>
            </consumption>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.consumption.liquid.combined}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "41" in "_site/index.html"

  Scenario: parse 'vehicle/emission/class' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <emission>
              <class>Euro 6</class>
            </emission>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.emission.class}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "Euro 6" in "_site/index.html"

  Scenario: parse 'vehicle/emission/co2_liquid' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <emission>
              <co2_liquid>107</co2_liquid>
            </emission>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.emission.co2_liquid}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "107" in "_site/index.html"

  Scenario: parse 'vehicle/emission/co2_gas' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <emission>
              <co2_gas />
            </emission>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.emission.co2_gas}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "" in "_site/index.html"

  Scenario: parse 'vehicle/emission/co2_electric' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <emission>
              <co2_electric />
            </emission>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.emission.co2_electric}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "" in "_site/index.html"

  Scenario: parse 'vehicle/mileage' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <mileage>8800</mileage>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.mileage}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "8800" in "_site/index.html"

  Scenario: parse 'vehicle/service/last_technical_service' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <service>
              <last_technical_service>0001-01-01T00:00:11</last_technical_service>
            </service>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.service.last_technical_service}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "0001-01-01T00:00:11" in "_site/index.html"

  Scenario: parse 'vehicle/service/last_change_cam_belt' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <service>
              <last_change_cam_belt>0001-01-01T00:00:22</last_change_cam_belt>
            </service>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.service.last_change_cam_belt}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "0001-01-01T00:00:22" in "_site/index.html"

  Scenario: parse 'vehicle/hsn' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <hsn>0</hsn>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.hsn}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "0" in "_site/index.html"

  Scenario: parse 'vehicle/schwacke_code' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <schwacke_code>111313</schwacke_code>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.schwacke_code}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "111313" in "_site/index.html"

  Scenario: parse 'vehicle/initial_registration' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <initial_registration>2017-01-01T00:00:00</initial_registration>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.initial_registration}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "2017-01-01T00:00:00" in "_site/index.html"

  Scenario: parse 'vehicle/general_inspection' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <general_inspection />
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.general_inspection}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "" in "_site/index.html"

  Scenario: parse 'vehicle/notes' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <notes>ALLESTIMENTO PREMIUM AMG\\Colore bianco Zirru\\Pelle alcantara nera</notes>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.notes}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "ALLESTIMENTO PREMIUM AMG\\Colore bianco Zirru\\Pelle alcantara nera" in "_site/index.html"

  Scenario: parse 'vehicle/prices/i-th/type' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <prices>
              <price>
                <type>public</type>
              </price>
            </prices>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.prices.first.type }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "public" in "_site/index.html"

  Scenario: parse 'vehicle/prices/i-th/vat_type' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <prices>
              <price>
                <vat_type id="">true</vat_type>
              </price>
            </prices>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.prices.first.vat_type }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "true" in "_site/index.html"

  Scenario: parse 'vehicle/prices/i-th/currency' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <prices>
              <price>
                <currency>Euro</currency>
              </price>
            </prices>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.prices.first.currency }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "Euro" in "_site/index.html"

  Scenario: parse 'vehicle/prices/i-th/negotiable' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <prices>
              <price>
                <negotiable>false</negotiable>
              </price>
            </prices>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.prices.first.negotiable }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "false" in "_site/index.html"

  Scenario: parse 'vehicle/prices/i-th/value' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <prices>
              <price>
                <value>37000</value>
              </price>
            </prices>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.prices.first.value }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "37000" in "_site/index.html"

  Scenario: parse 'vehicle/warranty_duration' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <warranty_duration>24</warranty_duration>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.warranty_duration }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "24" in "_site/index.html"

  Scenario: parse 'vehicle/delivery/delivery_time' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <delivery>
              <delivery_time />
            </delivery>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.delivery.delivery_time }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "" in "_site/index.html"

  Scenario: parse 'vehicle/delivery/delivery_date' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <delivery>
              <delivery_date>2017-05-22T00:00:00</delivery_date>
            </delivery>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.delivery.delivery_date }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "2017-05-22T00:00:00" in "_site/index.html"

  Scenario: parse 'vehicle/equipments/equipment/i-th/text' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <equipments>
              <equipment>
                <text>ABS</text>
              </equipment>
              <equipment>
                <text> Airbag conducente</text>
              </equipment>
            </equipments>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{% for equipment in vehicle.equipments %}{{ equipment.text }}{% endfor %}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "ABS Airbag conducente" in "_site/index.html"

  Scenario: parse 'vehicle/media/images/image/i-th/uri' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <media>
              <images>
                <image>
                  <uri>http://pic.autoscout24.net/images/764/565/0336565764001.jpg</uri>
                </image>
              </images>
            </media>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{ vehicle.media.images.first.uri }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "http://pic.autoscout24.net/images/764/565/0336565764001.jpg" in "_site/index.html"

  Scenario: parse 'vehicle/product_bookings/product/i-th/name' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <product_bookings>
              <product>
                <name>fa</name>
              </product>
            </product_bookings>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{ vehicle.product_bookings.first.name }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "fa" in "_site/index.html"

  Scenario: parse 'vehicle/product_bookings/product/i-th/status' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <product_bookings>
              <product>
                <status>false</status>
              </product>
            </product_bookings>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{ vehicle.product_bookings.first.status }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "false" in "_site/index.html"

  Scenario: parse 'vehicle/previous_owner' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <previous_owner />
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{ vehicle.previous_owner }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "" in "_site/index.html"

  Scenario: parse 'vehicle/accident_free' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <accident_free>true</accident_free>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{ vehicle.accident_free }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "true" in "_site/index.html"

  Scenario: parse 'vehicle/kerb_weight' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <kerb_weight>1430</kerb_weight>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{ vehicle.kerb_weight }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "1430" in "_site/index.html"

  Scenario: parse 'vehicle/alloy_wheels_size' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <alloy_wheels_size>18</alloy_wheels_size>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{ vehicle.alloy_wheels_size }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "18" in "_site/index.html"

  Scenario: parse 'vehicle/seats' from autoscout24.xml
    Given I have a _data directory
    And I have a "_data/autoscout24.xml" file with content:
    """
    <?xml version="1.0" encoding="utf-8"?>
    <stx3>
      <vehicle_data>
        <vehicles>
          <vehicle>
            <seats>5</seats>
          </vehicle>
        </vehicles>
      </vehicle_data>
    </stx3>
    """
    And I have an "index.html" page that contains "{% for vehicle in site.data.autoscout24 %}{{ vehicle.seats }}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see exactly "5" in "_site/index.html"