=begin

https://www.codewars.com/kata/count-letters-in-string/ruby

In this kata, you've to count letters in a given string and return the letter
count in a hash with 'letter' as key and count as 'value'. The key must be
'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

Example:

letter_count('arithmetics') #=> {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

Sample tests:

Test.describe("Basic Test") do
  Test.assert_equals(letter_count('codewars'), {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
  Test.assert_equals(letter_count('activity'), {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1})
  Test.assert_equals(letter_count('arithmetics'), {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})
end

=end

# Solution
def letter_count(str)
  hash = Hash.new(0)
  str.chars.each { |c| hash[c.to_sym] += 1 }
  hash
end

# Liked solution, not necessarily a top one or best practice
def letter_count(str)
  str.chars.group_by(&:to_sym).map { |k, v| [k, v.size] }.to_h
end
