# We need prime numbers and we need them now!
#
# Write a method that takes a maximum bound and returns all primes starting with 0 up-to and including the maximum bound.
#
# For example:
#
# prime 11
# Should return an array that looks like this:
#
# [2,3,5,7,11]
# Hint: Using a range from 2 to the number's square root should allow you to determine all possible factors.
#

# def find_prime(number)
#   sqrt = (number ** (1.0/2)).to_i
#   if sqrt <= 1
#     return
#   end
#   array = [2..sqrt].to_a
#   array.each do |num|
#       if number % num == 0
#         return
#       else
#         prime_numbers << num
#       end
#     end
#   end
# end

# puts find_prime(3).inspect
# puts find_prime(5).inspect
# puts find_prime(7).inspect
# puts find_prime(11).inspect
# puts find_prime(13).inspect

def prime(number)
  prime_numbers = []
  (2..number).each do |current_number|
    if is_prime? current_number
      prime_numbers << current_number
    end
  end
  return prime_numbers
end

def is_prime?(n)
  return false if n < 2
  return true if n == 2
  return false if n % 2 == 0
  factor = 3
  while factor < n/2
    return false if n % factor == 0
    factor +=2
  end
  true
end
