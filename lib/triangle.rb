# require 'pry'

class Triangle

  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize (length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def equilateral?
    @length1 == @length2 && @length2 == @length3 && non_zero_sides?
  end

  def isosceles?
    @length1 == @length2 || @length2 == @length3 || @length1 == @length3
  end

  def scalene?
    @length1 != @length2 && @length2 != @length3 && triangle_inequality?
  end

  def triangle_inequality?
    @length1 + @length2 > @length3 && @length2 + @length3 > @length1 && @length1 + @length3 > @length2
  end

  def non_zero_sides?
    @length1 > 0 && @length2 > 0 && @length3 > 0
  end

  def kind
    # binding.pry
    if !triangle_inequality? || !non_zero_sides?
      # begin
        raise TriangleError
      # rescue TriangleError => error
        # puts error.message
      # end

    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    elsif scalene?
      :scalene
    end

  end

  class TriangleError < StandardError
    def message 
      "You entered an invalid triangle measurement."
    end
  end

end