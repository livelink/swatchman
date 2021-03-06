# Swatchman

Simple gem for extracting swatches from an image with MiniMagick. Allows you to specify the number of swatches to extract.

## Dependencies

This gem makes use of the `mini_magick` gem, and therefore requires an installation of ImageMagick.

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

Swatchman will return 3 swatches by default. Specify the `size` named parameter when calling the `palette` method to adjust the number of swatches returned.

`swatch` has a method for calculating the percentage which recieves one paramater being the `total` this can be retrieved through `palette.total`.
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

## API

### `Swatchman::Image`

#### `new(path_or_url)`

##### Parameters

* `path_or_url` (String) — A local file system path, or URL.

##### Returns

* `Swatchman::Image` — Image instance.

#### `palette(size: 3)`

##### Parameters

* `size` (Integer) — The amount of swatches this palette should contain. Defaults to `3`.

##### Returns

* `Swatchman::Palette` — Palette instance.


### `Swatchman::Palette`

#### `new(histogram, size)`

##### Parameters

* `histogram` (String) — An ImageMagick histogram string.
* `size` (String) — The amount of swatches in the palette.

##### Returns

* `Swatchman::Palette` — Palette instance.

#### `size`

##### Returns

* `Integer` — The number of swatches in the palette.

#### `swatches`

##### Returns

* `Array` — Array of `Swatchman::Swatch` instances.


### `Swatchman::Swatch`

#### `new(color, frequency)`

##### Parameters

* `color` — The hex color value.
* `frequency` — The frequency it appears within the image.

##### Returns

* `Swatchman::Swatch` — Swatch instance.

#### `color`

##### Returns

* `String` — Hex color value.

#### `frequency`

##### Returns

* `Integer` — The frequency it appears.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/swatchman. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/livelink/swatchman/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Swatchman project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/swatchman/blob/master/CODE_OF_CONDUCT.md).
