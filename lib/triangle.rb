class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if !good_triangle
      raise TriangleError
    else
      if side1 == side2 && side2 == side3
        :equilateral
      elsif side1 == side2 || side2 == side3 || side1 == side3
        :isosceles
      else
        :scalene
      end
    end
  end

  def good_triangle
    (side1.positive? && side2.positive? && side3.positive?) && (side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1)
  end

  class TriangleError < StandardError
  end

end