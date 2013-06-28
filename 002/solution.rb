# Returns Fibonnaci sequence up to the cap
def fib(cap)
  list = [0, 1]
    
	while list.last < cap do
		list.push(list[-1] + list[-2])
	end
end

def getEvens(list)
	list.delete_if { n % 2 != 0 }
end

def addList(list)
	sum = 0
	list.each do |n|
		sum += n
	end
	sum
end

puts addList( getEvens( fib(4000000) ) )
