class Day_4
  attr_reader :input

  require "digest" 

  def initialize
    @input = "iwrupvqb"
  end

  def match prefix, a,len 
    hash = Digest::MD5.hexdigest("#{prefix}#{a}")
    hash.start_with?("0" * len)
  end

  def part_1
   a = 0
   until match(input, a, 5)
     a += 1
   end
   a
  end

  def part_2
     a = 0
   until match(input, a, 6)
     a += 1
   end
   a
  end
end