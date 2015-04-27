class Triangle
  #init 3 sides
  define_method(:initialize) do |side_a, side_b, side_c|
    @sides = [side_a, side_b, side_c].sort()
  end

  #compare two shortest with longest side to see if the triangle is possible
  define_method(:is_valid_triangle?) do
    if @sides[0] + @sides[1] > @sides[2]
      return true
    else
      return false
    end
  end

  #determine type of triangle
  define_method(:type) do
    if self.is_valid_triangle?()
      #determine what valid triangle type and return
      if @sides[0] == @sides[1] && @sides[1] == @sides[2]
        return "equilateral"
      elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
        return "isoceles"
      else
        return "scalene"
      end
    else
      return "invalid"
    end

  end

end
