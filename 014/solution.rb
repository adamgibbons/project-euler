# Problem 14

# Longest Collatz sequence

# The following iterative sequence is defined for the set of positive integers:

# n  n/2 (n is even)
# n  3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13  40  20  10  5  16  8  4  2  1

# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

def generateSequence(n)
  sequence = [n]
  begin
    if n.even?
      n = n/2
    else
      n = (3 * n + 1)
    end
    sequence.push n
  end until n == 1
  sequence.length
end

lengths = []
(1..1000000).each do |i|
  lengths.push generateSequence(i)
end

ans = lengths.find_index(lengths.max)

ans = ans + 1

puts ans
