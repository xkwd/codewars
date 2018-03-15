=begin

https://www.codewars.com/kata/longest-palindrome/ruby

Longest Palindrome

Find the length of the longest substring in the given string s that is the same
in reverse.

As an example, if the input was “I like racecars that go fast”, the substring
(racecar) length would be 7.

If the length of the input string is 0, return value must be 0.
Example:

"a" -> 1
"aab" -> 2
"abcde" -> 1
"zzbaabcd" -> 4
"" -> 0

Sample tests:

Test.assert_equals(longest_palindrome("a"), 1)
Test.assert_equals(longest_palindrome("aa"), 2)
Test.assert_equals(longest_palindrome("baa"), 2)
Test.assert_equals(longest_palindrome("aab"), 2)
Test.assert_equals(longest_palindrome("baabcd"), 4)
Test.assert_equals(longest_palindrome("baablkj12345432133d"), 9)

=end

# Solution
def longest_palindrome s
  s.size.downto(1) { |n| s.chars.each_cons(n) { |x| return x.size if x == x.reverse } }
end

# Liked solution, not necessarily a top one or best practice
def longest_palindrome s
  s.length.downto(1) do |n|
    s.chars.each_cons(n) do |arr|
      return n if arr == arr.reverse
    end
  end
  0
end
