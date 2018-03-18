=begin

https://www.codewars.com/kata/vowel-shifting/ruby

You get a "text" and have to shift the vowels by "n" positions to the right.
(Negative value for n should shift to the left.)
"Position" means the vowel's position if taken as one item in a list of all
vowels within the string. A shift by 1 would mean, that every vowel shifts to
the place of the next vowel.

Shifting over the edges of the text should continue at the other edge.

Example:

text = "This is a test!"
n = 1
output = "Thes is i tast!"

text = "This is a test!"
n = 3
output = "This as e tist!"

If text is null or empty return exactly this value.
Vowels are "a,e,i,o,u".

Sample tests:

Test.describe("Basic tests") do
  Test.it("nil or empty") do
    Test.assert_equals(vowel_shift(nil, 0), nil)
    Test.assert_equals(vowel_shift("", 0), "")
  end
  Test.it("Proper tests") do
    Test.assert_equals(vowel_shift("This is a test!", 0), "This is a test!")
    Test.assert_equals(vowel_shift("This is a test!", 1), "Thes is i tast!")
    Test.assert_equals(vowel_shift("This is a test!", 3), "This as e tist!")
    Test.assert_equals(vowel_shift("This is a test!", 4), "This is a test!")
    Test.assert_equals(vowel_shift("This is a test!", -1), "This as e tist!")
    Test.assert_equals(vowel_shift("This is a test!", -5), "This as e tist!")
    Test.assert_equals(vowel_shift("Brrrr",99),"Brrrr")
    Test.assert_equals(vowel_shift("AEIOUaeiou",1),"uAEIOUaeio")
  end
end

=end

# Solution
def vowel_shift(text,n)
  return nil if text.nil?
  vowels = text.scan(/[aeiou]/i).rotate(-n)
  text.gsub(/[aeiou]/i).with_index { |_, i| vowels[i] }
end

# Liked solution, not necessarily a top one or best practice
def vowel_shift(text, n)
  return nil if text.nil?
  vowels = text.scan(/[aeiou]/i).rotate(-n)
  text.gsub(/[aeiou]/i) { vowels.shift }
end
