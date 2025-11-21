day = ARGV[0]

require_relative "app/day_#{day}.rb"
klass = Object.const_get("Day_#{day}")
instance = klass.new

puts "Part 1"
puts instance.part_1

puts "Part 2"
puts instance.part_2