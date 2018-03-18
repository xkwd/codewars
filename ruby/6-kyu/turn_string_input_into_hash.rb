=begin

https://www.codewars.com/kata/turn-string-input-into-hash/ruby

Please write a function that will take a string as input and return a hash.
The string will be formatted as such. The key will always be a symbol and
the value will always be an integer.

"a=1, b=2, c=3, d=4"

This string should return a hash that looks like

{ :a => 1, :b => 2, :c => 3, :d => 4}

Sample tests:

Test.assert_equals(str_to_hash("a=1, b=2, c=3, d=4"), { :a => 1, :b => 2, :c => 3, :d => 4 })

=end

# Solution
def str_to_hash(str)
  str.split(", ").each_with_object({}) do |pair, hash|
    key, value = pair.split("=")
    hash[key.to_sym] = value.to_i
  end
end

# Liked solution, not necessarily a top one or best practice
def str_to_hash(str)
  Hash[str.scan(/(\w)=(\d)/).map{ |k,v| [k.to_sym, v.to_i] }]
end
