/*

https://www.codewars.com/kata/largest-5-digit-number-in-a-series/javascript

In the following 6 digit number:

283910

91 is the greatest sequence of 2 consecutive digits.

In the following 10 digit number:

1234567890

67890 is the greatest sequence of 5 consecutive digits.

Complete the solution so that it returns the greatest sequence of five
consecutive digits found within the number given. The number will be passed in
as a string of only digits. It should return a five digit integer. The number
passed may be as large as 1000 digits.

*/

// Solution
function solution(digits) {
  digits = digits.split("");
  var largest = 0;
  for (var i = 0; i <= digits.length - 5; i++) {
    var slice = Number(digits.slice(i, i+5).join(""));
    if (largest < slice) { largest = slice; }
  }
  return largest;
}

// Liked solution, not necessarily a top one or best practice
function solution(digits) {
  if (digits.length <= 5) return Number(digits);
  return Math.max(Number(digits.substr(0, 5)), solution(digits.substr(1)));
}
