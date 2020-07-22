require 'pry'
class Triangle
  attr_accessor :side_a, :side_b, :side_c, :type
  
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    if side_a == side_b && side_b == side_c
      @type = :equilateral
    elsif side_a == side_b || side_b == side_c || side_a == side_c
      @type = :isosceles
    else
      @type = :scalene
    end
    
  end
  
  def kind
    if self.side_a <= 0 || self.side_b <= 0 || self.side_c <= 0
      raise TriangleError
    elsif self.side_a + self.side_b <= self.side_c || self.side_b + self.side_c <= self.side_a || self.side_a + self.side_c <= self.side_b
      raise TriangleError
    end
    self.type
  end
  
  class TriangleError < StandardError
    def message
      "You'd be creating an invalid triangle. Please try again!"
    end
  end
  
end
