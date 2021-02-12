require 'swatchman/swatch'

module Swatchman
  class Palette
    attr_reader :size
    
    def initialize(histogram, size)
      @histogram = histogram
      @size = size
    end

    def swatches
      histogram_swatches.sort_by do |swatch|
        swatch.frequency / total
      end.reverse.slice(0, size)
    end

    def total
      @total ||= histogram_swatches.map(&:frequency).reduce(:+).to_f
    end
    
    private

    attr_reader :histogram
    
    def histogram_swatches
      @histogram_swatches ||= histogram.scan(
        /([0-9]+)\:.*(\#[0-9ABCDEF]{6})/
      ).map do |frequency, color|
        Swatch.new(color, frequency.to_i)
      end
    end
  end
end
