require 'fileutils'

def numberStringToArray(str)
  list = Array.new(str.split(" "))
  list.map! {|n| n = n.to_i}
end

def readGrid(filename)
  grid = []  
  File.open(filename, 'r') do |f|
    f.each_line do |line|
      grid.push numberStringToArray(line)
    end
  end
  grid
end

def getProduct(set)
  product = 1
  set.each {|int| product *= int}
  product
end

# Reads line L -> R, returns array of all products 
# of four consecutive integers
def checkLineLtoR(line)
  product_list = []
  i = 0
  while i < line.length - 3 do
    set = line[i...(i + 4)]
    product_list.push getProduct(set)
    i += 1
  end
  product_list
end

def checkLineRtoL(line)
  checkLineLtoR(line.reverse)
end


grid = readGrid('number_grid.txt')
puts checkLineRtoL(grid[0])




