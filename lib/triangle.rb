require "pry"
class Triangle
  
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
    
    def kind
      if self.s1 <= 0 || self.s2 <= 0 || self.s3 <= 0 || (self.s1 + self.s2 <= s3) || (self.s1 + self.s3 <= s2) || (self.s2 + self.s3 <= s1)
        raise TriangleError
      elsif (self.s1 == self.s2) && (self.s1 == self.s3)
        :equilateral
      elsif (self.s1 == self.s2) || (self.s1 == self.s3) || (self.s2 == self.s3)
        :isosceles
      elsif (self.s1 != self.s2) && (self.s1 != s3) && (self.s2 != s3)
        :scalene
      else
        puts "Not a Triangle"
      end
  end
  
  class TriangleError < StandardError
    puts ""
  end

# binding.pry

end




