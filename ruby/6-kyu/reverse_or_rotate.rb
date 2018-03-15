=begin

https://www.codewars.com/kata/reverse-or-rotate/ruby

The input is a string str of digits. Cut the string into chunks (a chunk here is
a substring of the initial string) of size sz (ignore the last chunk if its size
is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits is
divisible by 2, reverse that chunk; otherwise rotate it to the left by one
position. Put together these modified chunks and return the result as a string.

If:

  sz is <= 0 or if str is empty return ""
  sz is greater (>) than the length of str it is impossible to take a chunk of
  size sz hence return "".

Examples:
  revrot("123456987654", 6) --> "234561876549"
  revrot("123456987653", 6) --> "234561356789"
  revrot("66443875", 4) --> "44668753"
  revrot("66443875", 8) --> "64438756"
  revrot("664438769", 8) --> "67834466"
  revrot("123456779", 8) --> "23456771"
  revrot("", 8) --> ""
  revrot("123456779", 0) --> ""
  revrot("563000655734469485", 4) --> "0365065073456944"

Sample tests:

def testing(actual, expected)
    Test.assert_equals(actual, expected)
end
Test.describe("revrot") do
    Test.it("Basic tests") do
        testing(revrot("1234", 0), "")
        testing(revrot("", 0), "")
        testing(revrot("1234", 5), "")
        testing(revrot("733049910872815764", 5), "330479108928157")
        testing(revrot("73449198653089867653614763183843359781967519925", 4),
        "44371989035698686537741681363483795369189157")
    end
end

=end

# Solution
def revrot(str, sz)
  return "" if sz <= 0 || sz > str.length || str.empty?
  output = str.chars.each_slice(sz).to_a.reject { |x| x.length < sz }
  output.each do |chunk|
    if chunk.reduce(0) { |acc, n| acc + n.to_i**3 }.even?
      chunk.reverse!.join
    else
      chunk << chunk.shift
    end
  end
  output.join
end

# Liked solution, not necessarily a top one or best practice
def revrot(str, sz)
  return '' if sz <= 0
  chunks = str.scan(/.{#{sz}}/)
  chunks.map do |chunk|
    digits = chunk.chars
    sum = digits.map { |x| x.to_i ** 3 }.inject(:+)
    sum.even? ? digits.reverse : digits.rotate
  end.join
end
