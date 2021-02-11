require 'mini_magick'
require 'swatchman/palette'

module Swatchman
  class Image
    def initialize(path_or_url)
      @resource = MiniMagick::Image.open(path_or_url)
    end

    def palette(size: 3)
      Swatchman::Palette.new(
        resource.run_command(
          'convert',
          resource.path,
          '-format',
          '%c',
          '-colors',
          size,
          '-depth',
          8,
          'histogram:info:'
        ),
        size
      )
    end

    private

    attr_reader :resource
  end
end