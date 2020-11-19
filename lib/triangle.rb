class Triangle

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    not_valid
    if @l1 == @l2 && @l3 == @l1
      return :equilateral
    elsif @l1 == @l2 || @l2 == @l3 || @l3 == @l1
      return :isosceles
    else
      return :scalene
    end
  end

  def not_valid
    if @l1 + @l2 <= @l3 || @l2 + @l3 <= @l1 || @l3 + @l1 <= @l2 || @l1 <= 0 || @l2 <= 0 || @l3 <= 0
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError

  end

end


