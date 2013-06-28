list = []
(1...1000).each do |n|
  if (n % 5 == 0) or (n % 3 == 0)
		list.push n
	end
end

ans = 0
list.each do |item|
	ans += item
end

puts ans
