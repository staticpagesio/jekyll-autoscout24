# Jekyll::Autoscout24

A Jekyll plugin that provides owners of an Autoscout24 account a bridge between their backup XML file and a Jekyll site.

## Installation

You have 3 options for installing jekyll-autoscout24:

1. In your site source root, make a `_plugins` directory. Place your plugin here.
Any file ending in `*.rb` inside this directory will be loaded before Jekyll generates your site.

2. In your `_config.yml` file, add a new array with the key `plugins` (or `gems` for Jekyll < `3.5.0`) and the values of the gem name of the plugin:

```
plugins:
  - jekyll-autoscout24
```

Then install your plugin using `gem install jekyll-autoscout24`

3. Add the plugin to a Bundler group in your `Gemfile`. An example:

```
group :jekyll_plugins do
gem "jekyll-autoscout24"
end
```

## Usage

1. In your site source root, make a `backup` directory. Place your `autoscout24.xml` file here.
2. Start Jekyll as you would normally (`bundle exec jekyll serve`).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

To validate changes end-2-end, run `bundle install` in test/test-site and then run `bundle exec theme-specs` to exercise plugin's code using Jekyll functional specifications declared in `features` folder.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/jekyll-autoscout24. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

