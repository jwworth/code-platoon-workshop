# Phone Number
# http://exercism.io/exercises/ruby/phone-number

# Write a program that cleans up user-entered phone numbers so
# that they can be sent SMS messages.

# The rules are as follows:

# * If the phone number is less than 10 digits assume that it is bad number
# * If the phone number is 10 digits assume that it is good
# * If the phone number is 11 digits and the first number is 1, trim the 1 and use the last 10 digits
# * If the phone number is 11 digits and the first number is not 1, then it is a bad number
# * If the phone number is more than 11 digits assume that it is a bad number

require 'minitest/autorun'
require 'minitest/rg'
require_relative 'phone_number'

class PhoneNumberTest < Minitest::Test
  def test_cleans_number
    number = PhoneNumber.new('(123) 456-7890').number
    assert_equal '1234567890', number
  end

  # Add tests here!
end
