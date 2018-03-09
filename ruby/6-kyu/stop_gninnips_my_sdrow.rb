=begin

https://www.codewars.com/kata/stop-gninnips-my-sdrow/ruby

Write a function that takes in a string of one or more words, and returns the
same string, but with all five or more letter words reversed (Just like the name
of this Kata). Strings passed in will consist of only letters and spaces. Spaces
will be included only when more than one word is present.

Examples:

spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
spinWords( "This is a test") => returns "This is a test"
spinWords( "This is another test" )=> returns "This is rehtona test"

Sample test:

Test.assert_equals(spinWords("Hey fellow warriors"), "Hey wollef sroirraw");

=end

# Solution
def spinWords(string)
  string.split.map{ |v| v.length > 4 ? v.reverse : v }.join(" ")
end

# Liked solution, not necessarily a top one or best practice
def spinWords(string)
  string.gsub(/\w{5,}/, &:reverse)
end
