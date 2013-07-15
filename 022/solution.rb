LETTERS = ('A'..'Z').to_a

def listNames()
  names = open('names.txt') do |f|
    f.read
  end

  names = names.scan(/[A-Z]*/)

  names.delete_if do |name|
    name == ''
  end
end

def scoreLetter(letter)
  score = LETTERS.index(letter) + 1
end

def scoreName(word)
  score = 0
  word.split('').each do |letter|
    score += scoreLetter(letter)
  end
  score
end

names = listNames().sort!
score = 0
names.each_with_index do |name, index|
  score += scoreName(name) * (index + 1)
end

puts score