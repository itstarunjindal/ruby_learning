class Animal
  def make_sound
    return "The animal makes a sound"
  end
end

class Dog < Animal
  def make_sound
    return "Woof"
  end
end

class Cat < Animal
  def make_sound
    return "Meow"
  end
end

dog = Dog.new
cat = Cat.new

puts "Cat sound #{cat.make_sound}"
puts "Dog sound #{dog.make_sound}"