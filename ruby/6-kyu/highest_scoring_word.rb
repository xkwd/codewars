=begin

https://www.codewars.com/kata/highest-scoring-word/ruby

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to it's position in the alphabet:
a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the
original string.

All letters will be lowercase and all inputs will be valid.

Sample tests:

describe "Basic Tests" do
  it "should pass basic tests" do
    Test.assert_equals(high('man i need a taxi up to ubud'), 'taxi')
    Test.assert_equals(high('what time are we climbing up the volcano'), 'volcano')
    Test.assert_equals(high('take me to semynak'), 'semynak')
    Test.assert_equals(high('aa b'), 'aa')
  end
end

=end

# Solution
def high(x)
  cont = []
  arr = x.split
  arr.each do |word|
    cont << word.split("").inject(0) { |acc, c| acc + c.ord - 96 }
  end
  arr[cont.index(cont.max)]
end

# Liked solution, not necessarily a top one or best practice
def high(x)
  x.scan(/\w+/).max_by{ |x| x.sum - x.size * 96 }
end
