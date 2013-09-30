# Problem 21

# Amicable numbers

# Let d(n) be defined as the sum of proper divisors of n 
# (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an 
# amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 
# 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; 
# therefore d(220) = 284. The proper divisors of 284 are 
# 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

def isProperDivisor(dividend, divisor)
  result = false
  result = true if dividend % divisor == 0

  result
end

def listProperDivisorsOf(dividend)
  list = []
  (1..(dividend/2)).each do |divisor|
    list.push divisor if isProperDivisor(dividend, divisor)
  end

  list
end

def getSumOfList(list)
  list.reduce(:+)
end


list = []
(2..10000).each do |i|
  p = getSumOfList(listProperDivisorsOf(i))
  q = getSumOfList(listProperDivisorsOf(p))
  if i == q and i != p
    list.push p, q
  end
end

sum_of_amicable_numbers_under_10000 = getSumOfList(list.uniq)

puts sum_of_amicable_numbers_under_10000
