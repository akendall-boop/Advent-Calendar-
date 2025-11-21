class Day_1
  def part_1 
    str = File.read "inputs/day1.txt"
    str.count("(") - str.count(")")
  end

  def part_2
    str = File.read "inputs/day1.txt"
    pos = 1
    str.chars.find_index do |c|
      pos +=1 if c=="(" 
      pos -=1 if c==")" 
      pos < 0
    end
  end
end