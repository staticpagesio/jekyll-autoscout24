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