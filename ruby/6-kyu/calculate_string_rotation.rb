=begin

https://www.codewars.com/kata/calculate-string-rotation/ruby

Write a function that receives two strings and returns n, where n is equal to
the number of characters we should shift the first string forward to match the second.

For instance, take the strings "fatigue" and "tiguefa". In this case, the first
string has been rotated 5 characters forward to produce the second string, so 5
would be returned. If the second string isn't a valid rotation of the first
string, the method returns -1.

Examples:

"coffee", "eecoff" => 2
"eecoff", "coffee" => 4
"moose", "Moose" => -1
"isn't", "'tisn" => 2
"Esham", "Esham" => 0
"dog", "god" => -1

Sample tests:

Test.assert_equals(shifted_diff("eecoff","coffee"), 4)
Test.assert_equals(shifted_diff("Moose","moose"), -1)
Test.assert_equals(shifted_diff("isn't","'tisn"), 2)

=end

# Solution
def shifted_diff(first, second)
  first.each_char.with_index { |_, i| return i if first.chars.rotate(-i).join == second }
  -1
end

# Liked solution, not necessarily a top one or best practice
def shifted_diff(f, s)
  f.size == s.size && (s * 2).index(f) || -1
end
