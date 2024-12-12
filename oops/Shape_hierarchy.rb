class Shape
  def area
    raise NotImplementedError, "Subclasses should have this method"
  end
end

class Circle < Shape
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    return 3.14 * radius * radius
  end
end


class Rectangle < Shape
  attr_accessor :width, :height

  def initialize(width,height)
    @width = width
    @height = height
  end

  def area
    return width*height
  end
end

circle = Circle.new(5)
rectangle = Rectangle.new(4,5)

puts "Area of circle is #{circle.area}"
puts "Area of rectangle is #{rectangle.area}"