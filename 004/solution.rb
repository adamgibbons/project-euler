# Problem 4
#
# Largest palindrome product
#
# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
#
################################

product_list = []
palindrome_list = []

def getProduct(x, y)
  return x * y
end

def isPalindrome(num)
  str = num.to_s
  return true if str.length == 0 or str.length == 1
  first = str.slice!(0)
  last = str.slice!(-1)
  if first != last
    return false
  else
    isPalindrome(str)
  end
end

y = 100
while y < 1000 do
  (100..999).each do |x|
    product_list.push getProduct(x, y)
    if isPalindrome(product_list.last)
      puts "#{product_list.last} is a palindrome!"
      palindrome_list.push product_list.last
    end
  end
  y += 1
end

puts "product list: #{product_list}"
puts "palindrome list: #{palindrome_list}"
puts palindrome_list.max

