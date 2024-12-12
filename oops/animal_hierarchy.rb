class Animal
  def make_sound
    return "The animal makes a sound"
  end

  def describe_animal
    "#{self.class} make sound '#{make_sound}'"
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

puts "#{cat.describe_animal}"
puts "#{dog.describe_animal}"