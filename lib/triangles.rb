class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle) do
    if @side1.+(@side2) <= @side3 || @side2.+(@side3) <= @side1 || @side1.+(@side3) <= @side2
    "its not a triangle"
    elsif @side1 == @side2 && @side2 == @side3
      "its an equilateral triangle"
    elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      "its an isosceles triangle"
    elsif @side1 != @side2 && @side2 != @side3 && @side1 != @side3
      "its a scalene triangle"
    end
  end
end
