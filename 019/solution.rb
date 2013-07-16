# Problem 19

# Counting Sundays

# You are given the following information, but you may prefer to do some research for yourself.

# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.

# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

class SundayCounter
  def initialize()
    @months = ['jan', 'feb', 'mar', 'apr', 'may', 'jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec']
    @days = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun']
    @day = 1
    @year = 1901
    @sundayCounter = 0
  end

  def isLeapYear(year)
    return true if year % 4 == 0 and year % 100 != 0 or year % 400 == 0
    false
  end

  def incrementDay()
    if @day == 6 then @day = 0 else @day += 1 end
  end

  def countDaysInYear()
    year = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    year[1] = 29 if isLeapYear(@year)

    year.each_with_index do |month, counter|
      i = 0
      if @days[@day] == 'sun' then @sundayCounter += 1 end
      until i == month do
        incrementDay()
        i += 1
      end
    end
  end

  def countSundays()
    until @year == 2001 do
      countDaysInYear()
      @year += 1
    end
    puts @sundayCounter
  end
end

counter = SundayCounter.new
counter.countSundays
