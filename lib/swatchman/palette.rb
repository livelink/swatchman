require 'swatchman/swatch'

module Swatchman
  class Palette
    MATCH = /([0-9]+)\:.*(\#[0-9ABCDEF]{6})/
    
    def initialize(histogram, size)
      @histogram = histogram
      @size = size
    end

    def swatches
      swatches = histogram.scan(MATCH).map do |frequency, color|
        Swatch.new(color, frequency.to_i)
      end
      
      total = swatches.map(&:frequency).reduce(:+).to_f

      swatches
        .sort_by { |swatch| swatch.frequency / total }
        .reverse
        .slice(0, size)
    end

    private

    attr_reader :histogram, :size
  end
end