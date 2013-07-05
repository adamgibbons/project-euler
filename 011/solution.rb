# TODO: read length, height of grid

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

def getReversedGrid(filename)
  grid = []  
  File.open(filename, 'r') do |f|
    f.each_line do |line|
      grid.push numberStringToArray(line.reverse)
    end
  end
  grid
end

def getProduct(set)
  product = 1
  set.each {|int| product *= int}
  product
end

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

def checkGridLtoR(grid)
  height = 20
  i = 0
  product_list = []
  while i < height do
    product_list += checkLineLtoR(grid[i])
    i += 1
  end
  product_list
end

def checkGridRtoL(grid)
  height = 20
  i = 0
  product_list = []
  while i < height do
    product_list += checkLineRtoL(grid[i])
    i += 1
  end
  product_list
end

def checkGridTtoB(grid)
  height = 20
  i = 0
  product_list = []
  while i < height do
    product_list += checkLineTtoB(grid)
    i += 1
  end
  product_list
end

def checkGridBtoT(grid)
  height = 20
  i = 0
  product_list = []
  while i < height do
    product_list += checkLineBtoT(grid)
    i += 1
  end
  product_list
end

def checkLineRtoL(line)
  checkLineLtoR(line.reverse)
end

def getLineTtoB(grid)
  height = 20
  verticalList = []
  i = 0
  while i < height do
    verticalList.push grid[i][0]
    i += 1
  end
  verticalList
end

def checkLineTtoB(grid)
  vertical_line = getLineTtoB(grid)
  checkLineLtoR(vertical_line)
end

def checkLineBtoT(grid)
  vertical_line = getLineTtoB(grid)
  checkLineRtoL(vertical_line.reverse)
end

def checkVerticalGrid(grid)
  product_list = checkGridTtoB(grid) + checkGridBtoT(grid)
end

def checkHorizonalGrid(grid)
  product_list = checkGridRtoL(grid) + checkGridRtoL(grid)
end

def checkDiagonalTLtoBR(grid)
  product_list = []
  height, length = 20, 20
  y, x = 0, 0
  while y < (height - 3) do
    while x < (length - 3) do
      letter = [grid[y][x], grid[y + 1][x + 1], grid[y + 2][x + 2], grid[y + 3][x + 3]]
      product_list.push(getProduct(letter))
      x += 1
    end
    y += 1
  end
  product_list
end

def reverseGrid(grid)
  reversed_grid = []
  grid.each do |line|
    reversed_grid.push(line.reverse)
  end
  reversed_grid
end

def checkDiagonalTRtoBL(grid)
  reversed_grid = reverseGrid(grid)
  checkDiagonalTLtoBR(reversed_grid)
end



grid = readGrid('number_grid.txt')
reversed_grid = reverseGrid(grid)

product_list = checkVerticalGrid(grid) + checkHorizonalGrid(grid) + checkDiagonalTLtoBR(grid) + checkDiagonalTRtoBL(grid)

puts product_list.max








