# Temperature Converter

# Write a program that converts temperatures from any scale to any other
# scale, using this chart:

# from Celsius                            to Celsius
# Fahrenheit[°F] = [°C] × 9⁄5 + 32        [°C] = ([°F] − 32) × 5⁄9
# Kelvin[K] = [°C] + 273.15               [°C] = [K] − 273.15
# Rankine[°R] = ([°C] + 273.15) × 9⁄50    [°C] = ([°R] − 491.67) × 5⁄9
# Delisle[°De] = (100 − [°C]) × 3⁄273     [°C] = 100 − [°De] × 2⁄3
# Newton[°N] = [°C] × 33⁄100              [°C] = [°N] × 100⁄33
# Réaumur[°Ré] = [°C] × 4⁄50              [°C] = [°Ré] × 5⁄4
# Rømer[°Rø] = [°C] × 21⁄40 + 7.50        [°C] = ([°Rø] − 7.5) × 40⁄21

# Source: https://en.wikipedia.org/wiki/Temperature#Temperature_scales

require 'minitest/autorun'
require 'minitest/rg'
require_relative 'temperature_converter'

class TemperatureConverterTest < Minitest::Test
  def test_convert_celsius_to_farenheit
    assert_equal 62, TemperatureConverter.celsius_to_farenheit(30)
  end

  # Add tests here!
end
