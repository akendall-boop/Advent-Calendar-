class Day_1
  def part_1 
    str = File.read "inputs/day1.txt"
    str.count("(") - str.count(")")
  end

  def part_2
    str = File.read "input.text"
    pos = 1
    str.find do |c|
      pos +=1 if c=="(" 
      pos -=1 if c==")" 
      
    end
  end
end