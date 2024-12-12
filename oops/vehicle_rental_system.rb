class Vehicle
  def calculate_rent
    raise NotImplementedError, "This method should be in subclass"
  end
end

class Car < Vehicle
  attr_accessor :fair,:day

  def initialize(fair,day)
    @fair = fair
    @day = day
  end

  def calculate_rent
    return day*fair
  end
end

class Bike < Vehicle
  attr_accessor :fair,:day
  def initialize(fair,day)
    @fair = fair
    @day  = day
  end

  def calculate_rent
    return day*fair
  end
end

car = Car.new(20,5)
bike = Bike.new(10,5)

puts "Car fair for using 5 days #{car.calculate_rent}"
puts "Bike fair for using 5 days #{bike.calculate_rent}"