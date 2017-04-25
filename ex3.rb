# Given an array of numbers return an array of numbers from the array that qualify as perfect squares. A perfect square is defined as a whole number that, when square rooted, is a whole number. (Such as 1, 4, 9, 16, etc, etc.)
#
# Note: Return only one copy of each perfect square in ascending order
#
# get_squares(1..16) # => [1, 4, 9, 16]
# get_squares(1..100) # => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
# get_squares([4, 1, 16, 1]) # => [1, 4, 16]
require 'pry'

def get_squares(range)
  perfect_squares = []
  range.each do |number|
    root = (number ** (1.0/2)).to_i
    if root ** 2 == number
      perfect_squares << number
    end
  end
  perfect_squares.sort.uniq
end

puts get_squares(1..16).inspect
puts get_squares(1..100).inspect
puts get_squares([4, 1, 16, 1]).inspect
