class Day_3
  def initialize
    @input = File.read("inputs/day3.txt")
  end

  def visit(visited, chars)
    x = 0
    y = 0

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

  def part_1
    visited = {"0,0" => true}

    visit(visited, @input.chars)
  end

  def part_2
    visited = {"0,0" => true}
    slices = @input.chars.each_slice(2)
    santa = slices.map(&:first)
    robot = slices.map(&:last)

    visit(visited, santa)
    visit(visited, robot)
  end
end