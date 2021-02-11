# Swatchman

Simple gem for extracting swatches from an image with MiniMagick. Allows you to specify the number of swatches to extract.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'swatchman'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install swatchman

## Usage

Swatchman will return 3 swatches by default. Specify the `swatches` named parameter to adjust the number of swatches returned.

### From a URL

```ruby
Swatchman::Image.new('https://example.com/file.jpg').palette.swatches
```

### From a File

```ruby
Swatchman::Image.new('/some/file/path.png').palette.swatches
```

### Custom number of swatches

```ruby
Swatchman::Image.new('/some/file/path.png').palette(size: 5).swatches
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/swatchman. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/swatchman/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Swatchman project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/swatchman/blob/master/CODE_OF_CONDUCT.md).
