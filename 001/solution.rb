# brute force

sum = 0
(1...1000).each do |n|
  sum += n if (n % 5 == 0) or (n % 3 == 0)
end
puts sum

# more efficient
$TARGET = 999

def sumDivisibleBy(n)
  p = $TARGET / n
  return n * (p * (p + 1)) / 2
end

puts sumDivisibleBy(3) + sumDivisibleBy(5) - sumDivisibleBy(15)