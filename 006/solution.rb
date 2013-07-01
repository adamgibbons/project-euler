def getSquare(n)
  n *= n
end

def getSumOfSquares(min, max)
  squares = 0
  (min..max).each do |n|
    ans = getSquare(n)
    squares += ans
  end
  squares
end

def getSum(n)
  n += n
end

def getSumOfArray(min, max)
  sum = 0
  (min..max).each do |n|
    sum += n
  end
  sum
end

sumOfSquares = getSumOfSquares(1, 100)
squareOfSum = getSquare(getSumOfArray(1, 100))
ans = squareOfSum - sumOfSquares

puts ans
