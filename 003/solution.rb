MAX = 600851475143

primes_list = [3]

def isPrime(num)
  isPrime = true
	upTo = (2...num).to_a
	upTo.each do |n|
		if (num % n == 0)
			return isPrime = false
		end
	end
end

def addNextPrime(primes_list)
  n = 1
  until isPrime(primes_list.last + n) do
    n += 1
  end
  primes_list.push(primes_list.last + n)
end

def isFactor(factor, multiple)
  return true if (multiple % factor == 0)
end


until primes_list.last >= (MAX/2) do
  puts "#{primes_list.last} is factor of #{MAX}" if isFactor(primes_list.last, MAX)
  addNextPrime(primes_list)
end

puts "done"