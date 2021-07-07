class Triangle
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if self.length1 <= 0 || self.length2 <=0 || self.length3 <= 0 || self.length1 + self.length2 <= self.length3 || self.length2 + self.length3 <= self.length1 || self.length1 + self.length3 <= self.length2
      raise TriangleError
    elsif self.length1 == self.length2 && self.length2 == self.length3
      return :equilateral
    elsif self.length1 == self.length2 || self.length2 == self.length3 || self.length1 == self.length3 && self.length2 != self.length1
      return :isosceles
    elsif self.length1 != self.length2 && self.length2 != self.length3
        return :scalene
    end
  end

  class TriangleError < StandardError

  end
end
