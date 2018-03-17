=begin

https://www.codewars.com/kata/kebabize/ruby

Modify the kebabize function so that it converts a camel case string into a
kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps

Notes:
  the returned string should only contain lowercase letters

Sample tests:

Test.assert_equals(kebabize('myCamelCasedString'), 'my-camel-cased-string');
Test.assert_equals(kebabize('myCamelHas3Humps'), 'my-camel-has-humps');
Test.assert_equals(kebabize('70Slxe'), 'slxe');
Test.assert_equals(kebabize('ocwtZJ'), 'ocwt-z-j');
Test.assert_equals(kebabize('bSMtv4'), 'b-s-mtv');

=end

# Solution
def kebabize(str)
  str.tr("0-9", "").split(/(?=[A-Z])/).join('-').downcase
end

# Liked solution, not necessarily a top one or best practice
def kebabize(str)
  str.delete! "1234567890"
  str.gsub(/(?!^)([A-Z])/, '-\1').downcase
end
