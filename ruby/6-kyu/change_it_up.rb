=begin

https://www.codewars.com/kata/change-it-up/ruby

Create a function that takes a string as a parameter and does the following, in
this order:

replaces every letter with the letter following it in the alphabet (see note below)
makes any vowels capital
makes any consonants lower case

Note: the alphabet should wrap around, so Z becomes A

So, for example the string "Cat30" would return "dbU30" (Cat30 --> Dbu30 --> dbU30)

Sample tests:

Test.describe("Basic tests") do
  Test.assert_equals(changer('Cat30'), 'dbU30')
  Test.assert_equals(changer('Alice'), 'bmjdf')
  Test.assert_equals(changer('sponge1'), 'tqpOhf1')
  Test.assert_equals(changer('Hello World'), 'Ifmmp xpsmE')
  Test.assert_equals(changer('dogs'), 'Epht')
  Test.assert_equals(changer('z'), 'A')
end

=end

# Solution
def changer(str)
  str.downcase.tr("abcdefghijklmnopqrstuvwxyz", "bcdEfghIjklmnOpqrstUvwxyzA")
end

# Liked solution, not necessarily a top one or best practice
def changer(str)
  str.downcase.tr('a-z','b-za').tr('aeiou','AEIOU')
end
