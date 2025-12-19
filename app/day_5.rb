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
  end

  def part_2
  end
end
