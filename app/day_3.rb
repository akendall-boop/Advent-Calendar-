class Day_3
  def initialize
    @input = File.read("inputs/day3.txt")
  end

  def part_1
    visited = {"0,0" => true}
    x = 0
    y = 0

    chars = @input.chars
    chars.each do |c|
      if c == ">"
        x += 1
      elsif c == "<"
        x -= 1
      elsif c == "^"
        y += 1
      elsif c == "v"
        y -= 1
      end

      visited["#{x},#{y}"] = true
    end

    visited.length
  end

  def part_2
    0
  end
end