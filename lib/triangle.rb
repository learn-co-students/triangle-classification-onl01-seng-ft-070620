class Triangle
  attr_accessor :lng_1, :lng_2, :lng_3

  def initialize(lng_1, lng_2, lng_3)
    @lng_1 = lng_1
    @lng_2 = lng_2
    @lng_3 = lng_3
  end

  def kind
    if @lng_1 + @lng_2 <= @lng_3 || @lng_1 + @lng_3 <= @lng_2 || @lng_2 + @lng_3 <= @lng_1
      raise TriangleError
    elsif @lng_1 == @lng_2 && @lng_1 == @lng_3
        :equilateral
    elsif @lng_1 == @lng_2 || @lng_1 == @lng_3 || @lng_2 == @lng_3
        :isosceles
    else
        :scalene
    end  
  end



  class TriangleError < StandardError

  end
end
