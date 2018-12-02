class Triangle
  # write code here

  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end

  def kind
    if(@a <= 0 || @b <= 0 || @c <= 0 ||(a + b <= c)|| (a+c <= b) || (b+c <= a))
      begin
        raise TriangleError
      #rescue  TriangleError => error
        #puts error.message
      end
    else
      if (@a==@b && @b==@c && @a==@c)
        return :equilateral
      elsif ( (@a==@b) || (@a==@c) ||(@b==@c))
        return :isosceles
      else
        return :scalene
      end
    end
  end



  class TriangleError < StandardError
    # triangle error code
  end

end
