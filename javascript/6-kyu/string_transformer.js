/*

https://www.codewars.com/kata/string-transformer/javascript

Given a string, return a new string that has transformed based on the input:

    Change case of every character, ie. lower case to upper case, upper case to lower case.
    Reverse the order of words from the input.

For example:

stringTransformer('Example Input')/string_transformer("Example Input") (depending on the language you are completing the Kata in) should return 'iNPUT eXAMPLE'

You may assume the input only contain English alphabet and spaces.

Sample test:
Test.assertEquals(stringTransformer('Example string'), 'STRING eXAMPLE');

*/

// My solution
function stringTransformer(str) {
  return str.split(" ").reverse().map(x => x.split("").map(v => v == v.toUpperCase() ? v.toLowerCase() : v.toUpperCase()).join("")).join(" ");
}

// Liked solution, not necessarily a top one or best practice
function stringTransformer(str) {
  return str
    .split(' ')
    .reverse()
    .join(' ')
    .split('')
    .map(v => v == v.toUpperCase() ?
      v.toLowerCase() :
      v.toUpperCase())
    .join('');
}
