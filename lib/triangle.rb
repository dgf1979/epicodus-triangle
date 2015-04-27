class Triangle

  define_method(:initialize) do |side_a, side_b, side_c|
    @sides = []
    @sides.push(side_a)
    @sides.push(side_b)
    @sides.push(side_c)
    @sides.sort!()

  end

  define_method(:is_valid?) do

  end

end
