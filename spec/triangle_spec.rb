require('rspec')
require('triangle')

describe('Triangle#is_valid?') do

  it('determine if triangle is possible/valid') do
    test_triangle = Triangle.new(3,3,7)
    expect(test_triangle.is_valid?()).to(eq(false))
  end

  it('return equilateral if all sides are equal') do
    test_triangle = Triangle.new(3,3,3)
    expect(test_triangle.type()).to(eq("equilateral"))
  end
  
end
