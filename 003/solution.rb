# MAX = 600851475143

MAX = 6008

primes_list = []

def isPrime(num)
  isPrime = true
	upTo = (2...num).to_a
	upTo.each do |n|
		if (num % n == 0)
			return isPrime = false
		end
	end
  if isPrime is true
    primes_list.push num
	end
end



primes_list.length

# list = (1..(MAX+1)/2).to_a

# puts list.length

# list.delete_if { |item| isPrime(item) }