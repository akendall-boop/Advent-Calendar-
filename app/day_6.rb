class Day_6
  attr_reader :instructions
  attr_reader :lights
  attr_reader :lights_int

  def initialize
    input = File.readlines("inputs/day6.txt")
    @instructions = input.map do |line|
      cmd = line.match(/turn on|turn off|toggle/).to_s
      x1, y1, x2, y2 = line.scan(/\d+/).map(&:to_i)
      { cmd:, x1:, y1:, x2:, y2: }
    end

    @lights = Array.new(1000) { Array.new(1000, false) }
    @lights_int = Array.new(1000) { Array.new(1000, 0) }
  end

  def setter(instruction)
    instruction => {cmd:, x1:, y1:, x2:, y2:}
    (y1..y2).each do |y|
      (x1..x2).each do |x|
        if cmd == "turn on"
          lights[y][x] = true
        elsif cmd == "turn off"
          lights[y][x] = false
        elsif cmd == "toggle"
          lights[y][x] = !lights[y][x]
        else
          raise "Unexpected command: #{cmd}"
        end
      end
    end
  end

  def setter_int(instruction)
    instruction => {cmd:, x1:, y1:, x2:, y2:}
    (y1..y2).each do |y|
      (x1..x2).each do |x|
        if cmd == "turn on"
          lights_int[y][x] += 1
        elsif cmd == "turn off"
          val = lights_int[y][x]
          lights_int[y][x] = [val - 1, 0].max
        elsif cmd == "toggle"
          lights_int[y][x] += 2
        else
          raise "Unexpected command: #{cmd}"
        end
      end
    end
  end

  def part_1
    instructions.each { |i| setter(i) }
    puts lights.sum { |row| row.count { |i| i == true } }
  end

  def part_2
    instructions.each { |i| setter_int(i) }
    puts lights_int.sum { |row| row.sum }   
  end
end
