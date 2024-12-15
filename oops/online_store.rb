class Product
  attr_accessor :name, :price, :quantity
  def initialize(name,price,quantity)
    @name = name
    @price = price
    @quantity = quantity
  end

  def total_price
    @price * @quantity
  end

  def apply_discount
    total_price
  end

  def details
    {
      name: @name,
      price: @price,
      quantity: @quantity,
      total_price: total_price,
      apply_discount: apply_discount
    }
  end


end

class ElectronicProduct < Product
  
  attr_accessor :warranty_period

  def initialize(name,price,quantity,warranty_period)
    super(name,price,quantity)
    @warranty_period = warranty_period
  end

  def apply_discount
    total_price * 0.9
  end

  def details
    super.merge(warranty_period: @warranty_period)
  end

end


class ClothingProduct < Product

  attr_accessor :size

  def initialize(name,price,quantity,size) 
    super(name,price,quantity)
    @size = size
  end

  def apply_discount
    total_price * 0.95
  end

  def details
    super.merge(size: @size)
  end

end

laptop = ElectronicProduct.new("Laptop", 1000, 2, "2 yrs")
tshirt = ClothingProduct.new("T-Shirt", 20, 5, "M")

puts "Original price of Laptop: $#{laptop.total_price}"
puts "Discounted price of Laptop: $#{laptop.apply_discount}"
puts "Details: #{laptop.details}"

puts ""

puts "Original price of T-Shirt: $#{tshirt.total_price}"
puts "Discounted price of T-Shirt: $#{tshirt.apply_discount}"
puts "Details: #{tshirt.details}"