# # Topics
#
# * functions
# * math
# * arrays
# * iterating/looping
#
# # Calculator
#
# you will build a simple calculator script with the following methods:
#
# `add` takes two parameters and adds them
#
# `subtract` takes two parameters and subtracts the second from the first
#
# `sum` takes an *array* of parameters and adds them all together
#
# # Warning
#
# You may not have enough knowledge yet to complete `sum`. You will probably
# need to use **loops** (e.g. `while`) or **iterators** (e.g. `each`) to
# get the tests to pass.
#
# # Bonus
#
# There are also some bonus exercises for when you finish the regular ones. The bonus round will help teach you test-driven *development*, not simply test-guided *learning*.
#
# Your mission, should you choose to accept it, is to write *tests* for three new methods:
#
# * `multiply` which multiplies two numbers together
# * `power` which raises one number to the power of another number
# * `[factorial](http://en.wikipedia.org/wiki/Factorial)` (check Wikipedia if you forgot your high school math).
#
#

require "calculator"

describe "add" do
  it "adds 0 and 0" do
    expect(add(0,0)).to eq(0)
  end

  it "adds 2 and 2" do
    expect(add(2,2)).to eq(4)
  end

  it "adds positive numbers" do
    expect(add(2,6)).to eq(8)
  end
end

describe "subtract" do
  it "subtracts numbers" do
    expect(subtract(10,4)).to eq(6)
  end
end

describe "sum" do
  it "computes the sum of an empty array" do
    expect(sum([])).to eq(0)
  end

  it "computes the sum of an array of one number" do
    expect(sum([7])).to eq(7)
  end

  it "computes the sum of an array of two numbers" do
    expect(sum([7,11])).to eq(18)
  end

  it "computes the sum of an array of many numbers" do
    expect(sum([1,3,5,7,9])).to eq(25)
  end
end

# Extra Credit Test-Driving Bonus:
# once the above tests pass,
# write tests and code for the following:

describe "#multiply" do

  it "multiplies two numbers" do
    expect(multiply([2,3])).to eq(6)
  end

  it "multiplies several numbers" do
    expect(multiply([1,3,5,10])).to eq(150)
  end

  it "multiplies a negative and a positive number" do
    expect(multiply([-5, 2])).to eq(-10)
  end

  it "multiplies two negative numbers" do
    expect(multiply([-3, -4])).to eq(12)
  end

  it "multiplies 0 and a number" do
      expect(multiply([0,3])).to eq(0)
    end
end

describe "#power" do
  it "raises one number to the power of another number" do
    expect(power(5,7)).to eq(78125)
  end

  it "raises a number to the power of 0" do
    expect(power(2, 0)).to eq(1)
  end

  it "raises 0 to the power of a number" do
    expect(power(0, 5)).to eq(0)
  end

  it "raises a number to the power of 1" do
    expect(power(3, 1)).to eq(3)
  end
end

# http://en.wikipedia.org/wiki/Factorial
describe "#factorial" do
  it "computes the factorial of 0" do
    expect(factorial(0)).to eq(1)
  end
  it "computes the factorial of 1" do
    expect(factorial(1)).to eq(1)
  end
  it "computes the factorial of 2" do
    expect(factorial(2)).to eq(2)
  end
  it "computes the factorial of 5" do
    expect(factorial(5)).to eq(120)
  end
  it "computes the factorial of 10" do
    expect(factorial(10)).to eq(3628800)
  end
end
