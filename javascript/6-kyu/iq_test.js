/*

https://www.codewars.com/kata/iq-test/javascript

Bob is preparing to pass IQ test. The most frequent task in this test is to find
out which one of the given numbers differs from the others. Bob observed that one
number usually differs from the others in evenness. Help Bob — to check his answers,
he needs a program that among the given numbers finds one that is different in
evenness, and return a position of this number.

! Keep in mind that your task is to help Bob solve a real IQ test, which means
indexes of the elements start from 1 (not 0)

##Examples :

iqTest("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even

iqTest("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd

Sample tests:
Test.assertEquals(iqTest("2 4 7 8 10"),3);
Test.assertEquals(iqTest("1 2 2"), 1);

*/

// My solution
function iqTest(numbers) {
  s = numbers.split(" ").map((num) => num % 2);
  a = s.reduce((acc, val) => acc += val);
  return (a > 1) ? s.indexOf(0) + 1 : s.indexOf(1) + 1;
}

// Liked solution, not necessarily a top one or best practice
const iqTest = numbers => {
  numbers = numbers.replace(/(\d+\s)|(\d+$)/g, c => c % 2);
  return numbers.indexOf(numbers.match(/0/g).length > 1 ? '1' : '0') + 1;
}
