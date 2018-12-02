class Triangle
  # write code here

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end

  def kind
    if (@a==@b && @b==@c && @a==@c)
      return :equilateral
    elsif ( (@a==@b && @b==@c) || (@a==@b && @a==@c) ||(@b==@c && @a==@c))
      return :isosceles
    else
      return :scalene
    end
  end



  class TriangleError < StandardError
    # triangle error code
  end

end
