=begin

https://www.codewars.com/kata/grouped-by-commas/ruby

Finish the solution so that it takes an input n (integer) and returns a string
that is the decimal representation of the number grouped by commas after every 3
digits.

Assume: 0 <= n < 1000000000

Examples

       1  ->           "1"
      10  ->          "10"
     100  ->         "100"
    1000  ->       "1,000"
   10000  ->      "10,000"
  100000  ->     "100,000"
 1000000  ->   "1,000,000"
35235235  ->  "35,235,235"

=end

# Solution
def solution(n)
  n.to_s.reverse.scan(/.{1,3}/).join(",").reverse
end

# Liked solution, not necessarily a top one or best practice
def solution n
  n.to_s.gsub /(.)(?=.{3}+$)/, '\1,'
end
