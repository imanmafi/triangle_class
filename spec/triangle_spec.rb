require('rspec')
require('triangle')

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(2,2,8)
      expect(test_triangle.triangle?()).to(eq(false))
    end

    it("returns true if it is a triangle") do
      test_triangle = Triangle.new(2,2,3)
      expect(test_triangle.triangle?()).to(eq(true))
    end

    it("returns false if all sides are not equal") do
      test_triangle = Triangle.new(4,4,3)
      expect(test_triangle.equilateral?()).to(eq(false))
    end

    it("returns true if all sides are equal") do
      test_triangle = Triangle.new(4,4,4)
      expect(test_triangle.equilateral?()).to(eq(true))
    end

    it("returns false if 2 sides do not match") do
      test_triangle = Triangle.new(4,3,2)
      expect(test_triangle.isosceles?()).to(eq(false))
    end

    it("returns true if 2 sides do match") do
      test_triangle = Triangle.new(4,3,4)
      expect(test_triangle.isosceles?()).to(eq(true))
  end

    it("returns false if any of the sides match") do
    test_triangle = Triangle.new(4,3,4)
    expect(test_triangle.scalene?()).to(eq(false))
    end

    it("returns true if none of the sides match") do
      test_triangle = Triangle.new(4,3,2)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end
end
