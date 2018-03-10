/*

https://www.codewars.com/kata/dashatize-it/javascript

Given a number, return a string with dash'-'marks before and after each odd
integer, but do not begin or end the string with a dash mark.

Ex:

dashatize(274) -> '2-7-4'
dashatize(6815) -> '68-1-5'

Sample tests:
Test.describe("Basic", function(){
  Test.assertEquals(dashatize(274), "2-7-4", "Should return 2-7-4");
  Test.assertEquals(dashatize(5311), "5-3-1-1", "Should return 5-3-1-1");
  Test.assertEquals(dashatize(86320), "86-3-20", "Should return 86-3-20");
  Test.assertEquals(dashatize(974302), "9-7-4-3-02", "Should return 9-7-4-3-02");
});
Test.describe("Weird", function(){
  Test.assertEquals(dashatize(NaN), "NaN", "Should return NaN");
  Test.assertEquals(dashatize(0), "0", "Should return 0");
  Test.assertEquals(dashatize(-1), "1", "Should return 1");
  Test.assertEquals(dashatize(-28369), "28-3-6-9", "Should return 28-3-6-9");
});

*/

// My solution
function dashatize(num) {
  return (num+"").replace(/\d/g, v => v%2 == 0 ? v : "-" + v + "-").replace(/-+/g, "-").replace(/^\-(?=.*)|\-$$/g, "");
}

// Liked solution, not necessarily a top one or best practice
function dashatize(num) {
  return isNaN(num) ? 'NaN' : num.toString().match(/([13579]|[02468]+)/g).join('-');
}
