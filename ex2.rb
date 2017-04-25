# Your task is to create NxN multiplication table, of size provided in parameter.
#
# For example, when given size is 3:
#
# 1 2 3
# 2 4 6
# 3 6 9
# For given example, the return value should be: [[1,2,3],[2,4,6],[3,6,9]]

def multiplication(value)
  count = 1
  first_row = []
  full_array = []
  (1..value).map { |number| first_row << number }

  full_array << first_row

  (2..value).each do |number|
    array = []
    first_row.each do |digit|
      array << number * digit
    end
    full_array << array
  end

  full_array
end

puts multiplication(3).inspect
