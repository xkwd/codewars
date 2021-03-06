/*

https://www.codewars.com/kata/strip-comments/javascript

Complete the solution so that it strips all text that follows any of a set of
comment markers passed in. Any whitespace at the end of the line should also be
stripped out.

Example:

Given an input string of:

apples, pears # and bananas
grapes
bananas !apples

The output expected would be:

apples, pears
grapes
bananas

The code would be called like so:

var result = solution("apples, pears # and bananas\ngrapes\nbananas !apples",
["#", "!"])
// result should == "apples, pears\ngrapes\nbananas"

*/

// Solution
function solution(input, markers){
  var re = new RegExp("\\s*(" + markers.reduce((acc, cv) => acc + "|\\" + cv) + ").*", "g");
  return input.replace(re, "");
}

// Liked solution, not necessarily a top one or best practice
function solution(input, markers){
  return input.replace(new RegExp("\\s?[" + markers.join("") + "].*(\\n)?", "gi"), "$1");
}
