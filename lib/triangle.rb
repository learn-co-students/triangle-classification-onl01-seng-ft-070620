require 'pry'

class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    # binding.pry
  end #initialize

  def kind
    if self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0 || self.side1 + self.side2 <= self.side3 ||
       self.side2 + self.side3 <= self.side1 || self.side1 + self.side3 <= side2
      #  puts "i hit!"
       raise TriangleError
     elsif self.side1 == self.side2 && self.side2 == self.side3
       :equilateral
     elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side1 == self.side3
       :isosceles
     else
       :scalene
     end #if
  end #kind

  class TriangleError < StandardError
    def message
      "The triangle is invalid, try again!"
    end #message
  end #TriangleError

end #Triangle
