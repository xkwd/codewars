=begin

https://www.codewars.com/kata/consonant-value/ruby

A consonant is any letter of the alphabet except a, e, i ,o, u. The consonant
substrings in the word "zodiacs" are z, d, cs. Assuming a = 1, b = 2 ... z = 26,
the values of these substrings are 26 ,4, 22 because z = 26,d = 4,cs=3+19=22.
The maximum value of these substrings is 26. Therefore, solve("zodiacs") = 26.

Given a lowercase string that has alphabetic characters only and no spaces,
return the highest value of consonant substrings.

Sample tests:

describe "Consonant value" do
  it "Basic tests" do
    Test.assert_equals(solve("zodiac"),26)
    Test.assert_equals(solve("chruschtschov"),80)
    Test.assert_equals(solve("khrushchev"),38)
    Test.assert_equals(solve("strength"),57)
    Test.assert_equals(solve("catchphrase"),73)
    Test.assert_equals(solve("twelfthstreet"),103)
    Test.assert_equals(solve("mischtschenkoana"),80)
  end
end

=end

# Solution
def solve(s)
  s.scan(/[^aeoui]+/).map { |x| x.split("").reduce(0) { |acc, y| acc + y.ord - 96  } }.max
end

# Liked solution, not necessarily a top one or best practice
def solve(s)
  s.split(/[aeiou]/).map{ |x| x.sum - x.size * 96 }.max
end
