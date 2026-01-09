class Day_5
  attr_reader :input

  def initialize
    @input = File.readlines("inputs/day5.txt")
  end

  def nice str
    three_vowels = str.scan(/[aeiou]/).length >= 3
    doubled = str.match? /(.)\1/
    disallowed = str.match? /ab|cd|pq|xy/

    three_vowels && doubled && !disallowed
  end

  def part_1
    input.select{ |line| nice line}.length 
  end

  def nice_2 str
    two_pair = str.match? /(..).*\1/
    repeats = str.match? /(.).\1/

    two_pair && repeats 
  end

  def part_2
    input.select{ |line| nice_2 line}.length
  end
end
