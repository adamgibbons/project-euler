# Problem 16

# Power digit sum

# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

sum = 0

(2**1000).to_s.split('').each { |i| sum += i.to_i }

puts sum

# Pretty unreadable but I like how concise it can get.
# The key here is that (2**1000).to_s.split('') outputs an array of integer-strings