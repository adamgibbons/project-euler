# Problem 20

# Factorial digit sum

# n! means n  (n  1)  ...  3  2  1

# For example, 10! = 10  9  ...  3  2  1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!


def listFactorialsOf(n)
  list = []
  while n > 0
    list.push n
    n -= 1
  end
  list
end

puts listFactorialsOf(100).reduce(:*).to_s.split('').map!{|i| i = i.to_i}.reduce(:+)
