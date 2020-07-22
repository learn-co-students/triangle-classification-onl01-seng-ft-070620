class Triangle
  attr_accessor :a, :b, :c

  @@all = []

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @@all << self
  end

  def self.all
    @@all
  end
  
  def valid? 
    self.a + self.b > self.c && self.b + self.c > self.a && self.a + self.c > self.b #&& a > 0 && b > 0 && c > 0
  end

  def kind
    if self.valid?
        if self.a == self.b  && self.b == self.c
          :equilateral
        elsif self.a == self.b  && self.b != self.c ||  self.c == self.b  && self.b != self.a ||   self.a == self.c  && self.b != self.c
          :isosceles
        else
          :scalene
        end
    else
      raise TriangleError
    end
  end


  class TriangleError < StandardError
    def message
      "This is not a valid triangle."
    end
  end
end
