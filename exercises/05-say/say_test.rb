# Say
# http://exercism.io/exercises/ruby/say

# Write a program that will take a number from 0 to 999,999,999,999 and spell
# out that number in English.

# Step 1

# Handle the basic case of 0 through 99.
# If the input to the program is 22, then the output should be 'twenty-two'.
# Your program should complain loudly if given a number outside the blessed range.
# Some good test cases for this program are:

# 0
# 14
# 50
# 98
# -1
# 100

# Extension
# If you're on a Mac, shell out to Mac OS X's say program to talk out loud.

require 'minitest/autorun'
require 'minitest/rg'
require_relative 'say'

class SayTest < Minitest::Test
  def test_0
    assert_equal 'zero', Say.new(0).in_english
  end
end
