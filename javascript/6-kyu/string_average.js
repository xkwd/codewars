/*

https://www.codewars.com/kata/string-average/javascript

You are given a string of numbers between 0-9. Find the average of these numbers and return it as a floored whole number (ie: no decimal places) written out as a string. Eg:

"zero nine five two" -> "four"

If the string is empty or includes a number greater than 9, return "n/a"

Sample tests:
describe("Basic Tests", function(){
    it ("Find Average", function(){
        Test.assertEquals(averageString("zero nine five two"), "four");
        Test.assertEquals(averageString("four six two three"), "three");
        Test.assertEquals(averageString("one two three four five"), "three");
        Test.assertEquals(averageString("five four"), "four");
        Test.assertEquals(averageString("zero zero zero zero zero"), "zero");
        Test.assertEquals(averageString("one one eight one"), "two");
        Test.assertEquals(averageString(""), "n/a");
    });
});

*/

// My solution
function averageString(str) {
  let numbers = {zero:0, one:1, two:2, three:3, four:4, five:5, six:6, seven:7, eight:8, nine:9};
  let arr = str.replace(/\w+[^\s]/g, v => numbers[v]).split(" ");
  let avg = Math.floor(arr.reduce((acc,v) => +acc + +v) / arr.length);
  return (str == "" || arr.indexOf("undefined") >= 0) ? "n/a" : Object.keys(numbers).find(key => numbers[key] == avg);
}

// Liked solution, not necessarily a top one or best practice
function averageString(str) {
  let obj = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  return obj[Math.floor(str.split(' ').map(x=>obj.includes(x)?obj.indexOf(x):NaN).reduce((a, b)=>a+b)/str.split(' ').length)]||'n/a'
}
