/*

https://www.codewars.com/kata/roman-numerals-encoder/javascript

Create a function taking a positive integer as its parameter and returning a
string containing the Roman Numeral representation of that integer.

Modern Roman numerals are written by expressing each digit separately starting
with the left most digit and skipping any digit with a value of zero. In Roman
numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is
written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending
order: MDCLXVI.

Example:

solution(1000); // should return 'M'

Help:

Symbol    Value
I          1
V          5
X          10
L          50
C          100
D          500
M          1,000

Remember that there can't be more than 3 identical symbols in a row.

More about roman numerals - http://en.wikipedia.org/wiki/Roman_numerals

Sample tests:

Test.expect(solution(1) == 'I', '1 should == "I"')
Test.expect(solution(4) == 'IV', '4 should == "IV"')
Test.expect(solution(1000) == 'M', '1000 should == "M"')
Test.expect(solution(1990) == 'MCMXC', '1990 should == "MCMXC"')
Test.expect(solution(2007) == 'MMVII', '2007 should == "MMVII"')

*/

// Solution
function solution(n){
  let output = "";
  let ones = ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"];
  let tens = ["X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"];
  let hundreds = ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"];
  let thousands = ["M", "MM", "MMM", "MMMM", "MMMMM", "MMMMMM", "MMMMMMM", "MMMMMMMM", "MMMMMMMMM"];
  output += thousands[Math.floor(n / 1000) - 1];
  output += hundreds[Math.floor(n % 1000 / 100) - 1];
  output += tens[Math.floor(n % 1000 % 100 / 10) - 1];
  output += ones[Math.floor(n % 1000 % 100 % 10) - 1];
  return output.replace(/undefined/g, "");
}

// Liked solution, not necessarily a top one or best practice
function solution(number){
  var map = {M:1000,CM:900,D:500,CD:400,C:100,XC:90,L:50,XL:40,X:10,IX:9,V:5,IV:4,I:1},
      output = '';

  for (var i in map ) {
    while ( number >= map[i] ) {
      output += i;
      number -= map[i];
    }
  }
  return output;
}
