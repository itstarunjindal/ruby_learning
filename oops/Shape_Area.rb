class Shape
  def area
    raise NotImplementedError, "#{self.class} must have a method area"
  end
end

class Square < Shape

  attr_accessor :side

  def initialize(side)
    @side = side
  end
  def area
    a = side*side
    "Area of square #{a}"
  end
end

class Triangle < Shape

  attr_accessor :base,:height
  def initialize(base,height)
    @base = base
    @height = height
  end
  def area
    a = 0.5 * base * height
    "Area of a traingle #{a}"
  end
end

Shapes = [
  Square.new(5),
  Triangle.new(4,5),
  Square.new(10),
  Triangle.new(10,12)
]

Shapes.each do |shape|
  puts "#{shape.area}"
end 

