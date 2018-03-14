=begin

https://www.codewars.com/kata/find-the-next-perfect-square/ruby

You might know some pretty large perfect squares. But what about the NEXT one?

Complete the findNextSquare method that finds the next integral perfect square
after the one passed as a parameter. Recall that an integral perfect square is
an integer n such that sqrt(n) is also an integer.

If the parameter is itself not a perfect square, than -1 should be returned.
You may assume the parameter is positive.

Examples:

findNextSquare(121) --> returns 144
findNextSquare(625) --> returns 676
findNextSquare(114) --> returns -1 since 114 is not a perfect

Sample tests:

describe "find_next_square" do
  it "should return the next square for perfect squares" do
    Test.assert_equals(find_next_square(121), 144, "Wrong output for 121")
    Test.assert_equals(find_next_square(625), 676, "Wrong output for 625")
    Test.assert_equals(find_next_square(319225), 320356, "Wrong output for 319225")
    Test.assert_equals(find_next_square(15241383936), 15241630849, "Wrong output for 15241383936")
  end

  it "should return -1 for numbers which aren't perfect squares" do
    Test.assert_equals(find_next_square(155), -1, "Wrong output for 155")
    Test.assert_equals(find_next_square(342786627), -1, "Wrong output for 342786627")
  end
end

=end

# Solution
def find_next_square(sq)
  num = Math.sqrt(sq)
  num == num.to_i ? ( num.to_i + 1 ) ** 2 : -1
end

# Liked solution, not necessarily a top one or best practice
def find_next_square(sq)
  Math.sqrt(sq).floor**2==sq ? (Math.sqrt(sq)+1)**2 : -1
end
