require('rspec')
require('triangle')

describe('Triangle#is_valid?') do

  it('determine if triangle is possible/valid') do
    expect(Triangle.new(3,3,7)).to(eq(false))
  end

end
