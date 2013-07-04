# Problem 10
#
# Summation of primes
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.
#
#######################################################

# Generates primes list using Sieve of Eratosthenes algorithm

def sieveUpTo(max)
  primes_list = (2..max).to_a
  temp_list = []

  primes_list.each do |p|
    i = 2    
    while (p * i) <= primes_list.last do
      temp_list.push(p * i)
      i += 1
    end
  end

  primes_list = primes_list - temp_list
end

puts sieveUpTo(100000)