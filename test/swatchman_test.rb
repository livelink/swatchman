require "test_helper"

class SwatchmanTest < Swatchman::Test
  test "has version number" do
    refute_nil ::Swatchman::VERSION
  end

  test "can find swatches" do
    swatches = Swatchman::Image.new(fixture('samuel.png')).palette.swatches

    assert_equal 3, swatches.size

    assert_equal '#d9ad3f', swatches[0].color
    assert_equal 79151, swatches[0].frequency

    assert_equal '#33211e', swatches[1].color
    assert_equal 60308, swatches[1].frequency
    
    assert_equal '#be9f91', swatches[2].color
    assert_equal 21809, swatches[2].frequency
  end

  test "can find swatches with custom size" do
    swatches = Swatchman::Image.new(fixture('samuel.png')).palette(size: 5).swatches

    assert_equal 5, swatches.size

    assert_equal '#dbae3e', swatches[0].color
    assert_equal 73200, swatches[0].frequency

    assert_equal '#1e1516', swatches[1].color
    assert_equal 35551, swatches[1].frequency
    
    assert_equal '#5b362e', swatches[2].color
    assert_equal 28052, swatches[2].frequency
    
    assert_equal '#be9f91', swatches[3].color
    assert_equal 16595, swatches[3].frequency
    
    assert_equal '#b2915f', swatches[4].color
    assert_equal 7870, swatches[4].frequency
  end
end
