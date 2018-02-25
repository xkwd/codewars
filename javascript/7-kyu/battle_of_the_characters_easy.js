/*

https://www.codewars.com/kata/battle-of-the-characters-easy/javascript

Description:

Groups of characters decided to make a battle. Help them to figure out which group is more powerful. Create a function that will accept 2 variables and return the one who's stronger.
Rules:

    Each character have its own power: A = 1, B = 2, ... Y = 25, Z = 26
    Only capital chatacters can and will participate a battle.
    Only two groups to a fight.
    Group whose total power (A + B + C + ...) is bigger wins.
    If the powers are equal, it's a tie.

Examples:

  battle("ONE", "TWO"); // => "TWO"`
  battle("ONE", "NEO"); // => "Tie!"

Sample tests:

  describe("Basic Tests", function() {
    Test.assertEquals(battle("AAA", "Z"), "Z", "Unfair fight!");
    Test.assertEquals(battle("ONE", "TWO"), "TWO", "Unfair fight!");
    Test.assertEquals(battle("ONE", "NEO"), "Tie!", "Unfair fight!");
    Test.assertEquals(battle("FOUR", "FIVE"), "FOUR", "Unfair fight!");
  });

*/

// Solution
function battle(x, y) {
  let powers = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  let result = [x,y].map(a => a.split("").reduce((acc, cv) => acc + powers.indexOf(cv)+1, 0));
  return result[0] > result[1] ? x : ( result[0] == result[1] ? "Tie!" : y);
}

// Liked solution, not necessarily a top one or best practice
function battle(x, y) {
  a = x.split("").map(z => z.charCodeAt(0)-64).reduce((a,b) => a+b, 0)
  b = y.split("").map(z => z.charCodeAt(0)-64).reduce((a,b) => a+b, 0)
  return a < b ? y : a > b ? x : "Tie!"
}
