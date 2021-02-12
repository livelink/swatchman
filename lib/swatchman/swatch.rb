module Swatchman
  class Swatch
    attr_reader :color, :frequency

    def initialize(color, frequency)
      @color = color.downcase
      @frequency = frequency
    end

    def percentage(total)
      (frequency / total) * 100
    end
  end
end
