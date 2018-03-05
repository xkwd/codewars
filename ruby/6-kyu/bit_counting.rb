=begin

https://www.codewars.com/kata/bit-counting/ruby

Write a function that takes an (unsigned) integer as input, and returns
the number of bits that are equal to one in the binary representation of
that number.

Example: The binary representation of 1234 is 10011010010, so the function
should return 5 in this case

Sample tests:

Test.assert_equals count_bits(0), 0
Test.assert_equals count_bits(4), 1
Test.assert_equals count_bits(7), 3
Test.assert_equals count_bits(9), 2
Test.assert_equals count_bits(10), 2

=end

# Solution
def count_bits(n)
  n.to_s(2).scan(/1/).length
end

# Liked solution, not necessarily a top one or best practice
def count_bits(n)
  n.to_s(2).count "1"
end
