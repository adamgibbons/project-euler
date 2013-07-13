
# Problem 17

# Number letter counts

# If the numbers 1 to 5 are written out in words: one, two, three, four, five, 
# then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out 
# in words, how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) 
# contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. 
# The use of "and" when writing out numbers is in compliance with British usage.

str = ''

# router
def humanizeInteger(num)
  if num < 10
    mapOnes(num)
  elsif 10 <= num and num < 20
    mapTeens(num)
  elsif 20 <= num and num < 100
    handleTens(num)
  elsif 100 <= num and num < 1000
    handleHundreds(num)
  elsif num == 1000
    "one thousand"
  end
end

#handlers
def handleTens(num)
  if num % 10 == 0
    mapTens(num.to_s[0].to_i)
  else 
    "#{mapTens(num.to_s[0].to_i)}-#{mapOnes(num.to_s[1].to_i)}"
  end
end

def handleHundreds(num)
  if num % 100 == 0
    "#{mapOnes(num.to_s[0].to_i)} hundred"
  elsif num.to_s[1].to_i == 0
    "#{mapOnes(num.to_s[0].to_i)} hundred and #{mapOnes(num.to_s[2].to_i)}"
  elsif num.to_s[1].to_i == 1
    "#{mapOnes(num.to_s[0].to_i)} hundred and #{mapTeens(num.to_s[1..2].to_i)}"
  else
    "#{mapOnes(num.to_s[0].to_i)} hundred and #{handleTens(num.to_s[1..2].to_i)}"
  end
end

# mappers
def mapOnes(num)
  case num.to_i
    when 1; "one"
    when 2; "two"
    when 3; "three"
    when 4; "four"
    when 5; "five"
    when 6; "six"
    when 7; "seven"
    when 8; "eight"
    when 9; "nine"
  end
end

def mapTeens(num)
  case num.to_i
    when 10; "ten"
    when 11; "eleven"
    when 12; "twelve"
    when 13; "thirteen"
    when 14; "fourteen"
    when 15; "fifteen"
    when 16; "sixteen"
    when 17; "seventeen"
    when 18; "eighteen"
    when 19; "nineteen"
  end
end

def mapTens(num)
  case num
    when 2; "twenty"
    when 3; "thirty"
    when 4; "forty"
    when 5; "fifty"
    when 6; "sixty"
    when 7; "seventy"
    when 8; "eighty"
    when 9; "ninety"
  end
end

(1..1000).each do |num|
  str += humanizeInteger(num)
end

puts str.scan(/[a-z]/).length