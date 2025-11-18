class Day_2
  def part_1 
   arr = File.readlines "inputs/day2.txt"
   measurements = arr.map do |line|
     (l, w, h) = line.scan(/(\d+)/).map {|n| n.first.to_i} 
     side_1 = l*w 
     side_2 = w*h 
     side_3 = h*l 
     smallest = [side_1, side_2, side_3].min 
     2*l*w + 2*w*h + 2*h*l + smallest 
   end
   measurements.sum 
  end

  def part_2
    arr = File.readlines "inputs/day2.txt"
   measurements = arr.map do |line|
     (l, w, h) = line.scan(/(\d+)/).map {|n| n.first.to_i} 
    (side_1, side_2) = [l,h,w].min(2)
    side_1 * 2 + side_2 * 2 + l*w*h 
   end
   measurements.sum 
  end
end