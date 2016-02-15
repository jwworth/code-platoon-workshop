# Temperature Converter

# Write a program that converts temperatures from any scale to any other
# scale, using this chart:

# from Celsius:                                 to Celsius:
# Fahrenheit[°F] = [°C] × 9⁄5 + 32              [°C] = ([°F] − 32) × 5⁄9
# Kelvin[K]      = [°C] + 273.15                [°C] = [K] − 273.15
# Rankine[°R]    = ([°C] + 273.15) × 9⁄50       [°C] = ([°R] − 491.67) × 5⁄9
# Delisle[°De]   = (100 − [°C]) × 3⁄273         [°C] = 100 − [°De] × 2⁄3
# Newton[°N]     = [°C] × 33⁄100                [°C] = [°N] × 100⁄33
# Réaumur[°Ré]   = [°C] × 4⁄50                  [°C] = [°Ré] × 5⁄4
# Rømer[°Rø]     = [°C] × 21⁄40 + 7.50          [°C] = ([°Rø] − 7.5) × 40⁄21

# Source: https://en.wikipedia.org/wiki/Temperature#Temperature_scales

require 'minitest/autorun'
require 'minitest/rg'
require_relative 'temperature_converter'

class TemperatureConverterTest < Minitest::Test
  def test_convert_does_nothing_when_the_scales_are_the_same
    assert_equal 30.0, TemperatureConverter.convert(30.0, :celsius, :celsius)
    assert_equal 30.0, TemperatureConverter.convert(30.0, :farenheit, :farenheit)
  end

  def test_convert_celsius_to_farenheit
    assert_equal 86.0, TemperatureConverter.convert(30.0, :celsius, :farenheit)
    assert_equal 86.0, TemperatureConverter.celsius_to_farenheit(30.0)
    assert_equal 50.0, TemperatureConverter.celsius_to_farenheit(10.0)
  end

  def test_convert_farenheit_to_celsius
    assert_equal 30.0, TemperatureConverter.convert(86.0, :farenheit, :celsius)
    assert_equal 30.0, TemperatureConverter.farenheit_to_celsius(86.0)
    assert_equal 10.0, TemperatureConverter.farenheit_to_celsius(50.0)
  end

  def test_convert_celsius_to_kelvin
    assert_equal 283.15, TemperatureConverter.convert(10.0, :celsius, :kelvin)
    assert_equal 283.15, TemperatureConverter.celsius_to_kelvin(10.0)
    assert_equal 293.15, TemperatureConverter.celsius_to_kelvin(20.0)
  end

  def test_convert_kelvin_to_celsius
    assert_equal 10.0, TemperatureConverter.convert(283.15, :kelvin, :celsius)
    assert_equal 10.0, TemperatureConverter.kelvin_to_celsius(283.15)
    assert_equal 20.0, TemperatureConverter.kelvin_to_celsius(293.15)
  end

  def test_convert_farenheit_to_kelvin
    assert_equal 299.82, TemperatureConverter.convert(80, :farenheit, :kelvin)
  end

  def test_convert_farenheit_to_newton
    assert_equal 9.9, TemperatureConverter.convert(86.0, :farenheit, :newton)
  end
end
