require('rspec')
require('triangle')

describe('Triangle#is_valid?') do
  it('determine if triangle is possible/valid') do
    test_triangle = Triangle.new(3,3,7)
    expect(test_triangle.is_valid?()).to(eq(false))
  end
end

describe('Triangle#type') do
  it('return equilateral if all sides are equal') do
    test_triangle = Triangle.new(3,3,3)
    expect(test_triangle.type()).to(eq("equilateral"))
  end

  it('return isosceles if only two sides are equal') do
    test_triangle = Triangle.new(3,3,2)
    expect(test_triangle.type()).to(eq("isosceles"))
  end

  it('return scalene if no sides are equal') do
    test_triangle = Triangle.new(2,3,4)
    expect(test_triangle.type()).to(eq("scalene"))
  end

  it('return invalid if the type is not valid') do
    test_triangle = Triangle.new(3,7,3)
    expect(test_triangle.type()).to(eq("NOT a triangle"))
  end

end
