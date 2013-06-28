def isPrime(num)
  isPrime = true
	upTo = (2...num).to_a
	upTo.each do |n|
		if (num % n == 0)
			isPrime = false
		end
	end
	isPrime
end

list = (1...37).to_a

list.each do |item|
	puts isPrime(item)
end
