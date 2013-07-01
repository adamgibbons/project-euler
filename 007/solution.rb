# Problem 7
#
# 10001st prime
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
#
########################################

def isPrime(num)
  (2..num/2).each do |n|
    return false if num % n == 0
  end
  true
end

def getNthPrime(n)
  primes_list = [2]
  nextPrime = primes_list.last
  until primes_list.length == (n + 1) do
    if isPrime(nextPrime)
      primes_list.push nextPrime
    end
    nextPrime += 1
  end
  primes_list.last
end

puts getNthPrime(10001)

# So yeah, this is really inefficient. Here's the clock:
# ruby solution.rb  18.65s user 0.04s system 99% cpu 18.693 total
# TODO: Make this a sieve