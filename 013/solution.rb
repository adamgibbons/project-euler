require 'fileutils'

class Grid

  def initialize
    @grid = readGrid()
  end

  def readGrid(filename='grid.txt')
    grid = []
    File.open(filename, 'r') do |f|
      f.each_line do |line|
        grid.push line.to_i
      end
    end
    grid
  end

  def sumGrid()
    sum = 0
    @grid.each do |row|
      sum += row
    end
    sum
  end

  def getFirstTenDigitsOfSum()
    sum = sumGrid()
    sum.to_s[0...10]
  end

end

grid = Grid.new

puts grid.getFirstTenDigitsOfSum()

