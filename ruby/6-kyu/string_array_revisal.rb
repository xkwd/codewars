=begin

https://www.codewars.com/kata/string-array-revisal/ruby

In this Kata, you will be given an array of strings and your task is to remove
all consecutive duplicate letters from each string in the array.

For example:

dup(["abracadabra","allottee","assessee"]) = ["abracadabra","alote","asese"]
dup(["kelless","keenness"]) = ["keles","kenes"]

Strings will be alphabet characters only. Don't worry about lower and upper case.
See test cases for more examples.

Sample tests:

Test.describe("example tests") do
  Test.assert_equals(dup(["ccooddddddewwwaaaaarrrrsssss","piccaninny","hubbubbubboo"]),
                         ['codewars','picaniny','hubububo'])
  Test.assert_equals(dup(["abracadabra","allottee","assessee"]),
                         ['abracadabra','alote','asese'])
  Test.assert_equals(dup(["kelless","keenness"]), ['keles','kenes'])
  Test.assert_equals(dup(["Woolloomooloo","flooddoorroommoonlighters","chuchchi"]),
                         ['Wolomolo','flodoromonlighters','chuchchi'])
  Test.assert_equals(dup(["adanac","soonness","toolless","ppellee"]),
                         ['adanac','sones','toles','pele'])
  Test.assert_equals(dup(["callalloo","feelless","heelless"]),
                         ['calalo','feles','heles'])
  Test.assert_equals(dup(["putteellinen","keenness"]), ['putelinen','kenes'])
  Test.assert_equals(dup(["kelless","voorraaddoosspullen","achcha"]),
                         ['keles','voradospulen','achcha'])
end

=end

# Solution
def dup(arr)
  arr.map(&:squeeze)
end

# Liked solution, not necessarily a top one or best practice
def dup(arr)
  arr.map { |w| w.gsub(/(.)\1+/, '\1') }
end
