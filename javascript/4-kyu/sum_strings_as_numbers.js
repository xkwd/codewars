/*

https://www.codewars.com/kata/sum-strings-as-numbers/javascript

Given the string representations of two integers, return the string representation of the sum of those integers.

For example:

sumStrings('1','2') // => '3'

A string representation of an integer will contain no characters besides the ten numerals "0" to "9".

Sample test:
Test.assertEquals(sumStrings('123','456'),'579')

*/

// Solution
function sumStrings(a,b) {
  var zrx = /^0+/;
  a = a.replace(zrx, '').split('').reverse();
  b = b.replace(zrx, '').split('').reverse();
  var result = [], max = Math.max(a.length, b.length);
  for (var memo = 0, i = 0; i < max; i++) {
    var res = parseInt(a[i] || 0) + parseInt(b[i] || 0) + memo;
    result[i] = res % 10;
    memo = (res - result[i]) / 10;
  }
  if (memo) { result.push(memo) }
  return result.reverse().join('');
}

// Liked solution, not necessarily a top one or best practice
function sumStrings(a, b) {
  var res = '', c = 0;
  a = a.split('');
  b = b.split('');
  while (a.length || b.length || c) {
    c += ~~a.pop() + ~~b.pop();
    res = c % 10 + res;
    c = c > 9;
  }
  return res.replace(/^0+/, '');
}
