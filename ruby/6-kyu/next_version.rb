=begin

https://www.codewars.com/kata/next-version/ruby

You're fed up about changing the version of your software manually.
Instead, you will create a little script that will make it for you.
Exercice

Create a function nextVersion, that will take a string in parameter, and will
return a string containing the next version number.

For example:

nextVersion("1.2.3") === "1.2.4";
nextVersion("0.9.9") === "1.0.0.";
nextVersion("1") === "2";
nextVersion("1.2.3.4.5.6.7.8") === "1.2.3.4.5.6.7.9";
nextVersion("9.9") === "10.0";

Rules

All numbers, except the first one, must be lower than 10: if there are, you have
to set them to 0 and increment the next number in sequence.

You can assume all tests inputs to be valid.

Sample tests:

describe "nextVersion" do
  it "works for basic examples" do
    Test.assert_equals nextVersion("1.2.3"), "1.2.4"
    Test.assert_equals nextVersion("0.9.9"), "1.0.0"
    Test.assert_equals nextVersion("1"), "2"
    Test.assert_equals nextVersion("1.2.3.4.5.6.7.8"), "1.2.3.4.5.6.7.9"
    Test.assert_equals nextVersion("9.9"), "10.0"
  end
end

=end

# Solution
def nextVersion(version)
  next_version = (version.tr(".", "").to_i + 1).to_s.split("").join(".")
  extra_delimiters = next_version.count(".") - version.count(".")
  extra_delimiters.times { next_version.sub!(/\./, "") } if extra_delimiters > 0
  next_version
end

# Liked solution, not necessarily a top one or best practice
def nextVersion(version)
  version.succ
end
