# Problem 5
#
# Smallest multiple
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#
################################

START_WITH = (1..20).to_a.max

def isDivisible(dividend, divisor)
  return true if divisor == 0 or divisor == 1
  return false if dividend % (divisor) != 0
  divisor -= 1
  isDivisible(dividend, divisor)
end

def findLowestMultiple()
  lowestMultiple = START_WITH
  until isDivisible(lowestMultiple, START_WITH) do
    lowestMultiple += START_WITH
  end
  lowestMultiple
end

puts findLowestMultiple()