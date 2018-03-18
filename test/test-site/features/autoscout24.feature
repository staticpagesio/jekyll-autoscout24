Feature: AutoScout24
  In order to use catalog data in my site
  As a site's operator
  I want to use autoscout24.xml in my site

  Scenario: autoload autoscout24.xml file in _data directory
    Given I have a _data directory
    And I have a "_config.yml" file with content:
      """
      gems:
        - jekyll-autoscout24
      exclude:
        - Gemfile
        - Gemfile.lock
        - features
        - jekyll_output.txt
        - jekyll_status.txt
      """
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
    And I have an "index.md" page that contains "{% for vehicle in site.data.autoscout24 %}{{vehicle.dealer_id}}{% endfor %}"
    When I run jekyll build
    Then the "_site/index.html" file should exist
    And I should see "2142121262" in "_site/index.html"