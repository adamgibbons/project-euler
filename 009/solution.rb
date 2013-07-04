# Problem 9

# Special Pythagorean triplet

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.




def isNatural(a, b)
  return true if (Math.sqrt(a*a + b*b) % 1 == 0)
  false
end

def isCouplet(a, b, c)
  return true if ((1000 - c) == (a + b))
end

ab_list = []

for a in 1..500
  for b in a..500
    if isNatural(a, b)
      ab_list.push([a, b])
    end
  end
end

ab_list.each do |n|
  a, b = n.first, n.last
  c = Math.sqrt(a*a + b*b)
  if isCouplet(a, b, c)
    puts a*b*c.to_i
  end
end