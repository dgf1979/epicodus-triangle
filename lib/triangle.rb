class Triangle

  define_method(:initialize) do |side_a, side_b, side_c|
    @sides = [side_a.to_i(), side_b.to_i(), side_c.to_i()].sort()
  end

  define_method(:is_valid?) do
    if @sides[0] + @sides[1] > @sides[2]
      true
    else
      false
    end
  end

  define_method(:type) do

    if self.is_valid?() == true
      if @sides[0] == @sides[1] && @sides[1] == @sides[2]
        return "equilateral"
      elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
        return "isosceles"
      else
        return "scalene"
      end
    else
      return "NOT a triangle"
    end
  end

end
