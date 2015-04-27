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



end
