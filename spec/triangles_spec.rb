require('rspec')
require('triangles')

describe(Triangle) do
  describe("#triangle") do

    it("returns an equilateral triangle if all sides are equal") do
      test_triangle = Triangle.new(5, 5, 5)
      expect(test_triangle.triangle()).to(eq("its an equilateral triangle"))
    end

    it("returns an isosceles if two sides are equal") do
      test_triangle = Triangle.new(5, 5, 8)
      expect(test_triangle.triangle()).to(eq("its an isosceles triangle"))
    end

    it("returns not a triangle if two sides are less than the third side") do
      test_triangle = Triangle.new(3, 4, 8)
      expect(test_triangle.triangle()).to(eq("its not a triangle"))
    end

    it("returns a scalene if all sides are not equal") do
      test_triangle = Triangle.new(3, 4, 5)
      expect(test_triangle.triangle()).to(eq("its a scalene triangle"))
    end
  end
end
