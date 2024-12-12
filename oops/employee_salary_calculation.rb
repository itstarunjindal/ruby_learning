class Employee
  attr_accessor :name, :salary
  def initialize(name,salary)
    @name = name
    @salary = salary
  end

  def display_details
    return "Name and salary of #{self.class}: #{@name} #{@salary}"
  end
end

class Manager < Employee
  attr_accessor :name, :salary

  def bonus(bonus)
    @salary+=bonus
  end
end

class Developer < Employee
  attr_accessor :name, :salary

  def increment(percent)
    
    add = @salary*(percent/100)
    @salary+=add
    
  end
end

manager = Manager.new("abc",5000)
puts manager.display_details
manager.bonus(1000)
puts manager.display_details


developer = Developer.new("xyz",1000)
puts developer.display_details
developer.increment(10)
puts developer.display_details