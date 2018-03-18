=begin

https://www.codewars.com/kata/write-number-in-expanded-form/ruby

You will be given a number and you will need to return it as a string in
Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'

NOTE: All numbers will be whole numbers greater than 0.

Sample tests:

it "Example cases" do
  Test.assert_equals(expanded_form(12), '10 + 2')
  Test.assert_equals(expanded_form(42), '40 + 2')
  Test.assert_equals(expanded_form(70304), '70000 + 300 + 4')
end

=end

# Solution
def expanded_form(num)
  num = num.to_s
  num.chars
     .each_with_index
     .map { |c, i| c + "0" * (num.length - i - 1) if c != "0" }
     .compact
     .join(" + ")
end

# Liked solution, not necessarily a top one or best practice
def expanded_form(num)
  num.to_s
     .chars
     .reverse
     .map.with_index { |d, idx| d.to_i * 10**idx }
     .reject(&:zero?)
     .reverse
     .join(" + ")
end
