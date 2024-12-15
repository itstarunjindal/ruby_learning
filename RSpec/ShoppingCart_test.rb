require_relative 'ShoppingCart'

cart = Cart.new

RSpec.describe 'Add item: '  do

  it "adds item to cart" do
      result = cart.add_item(10)
      expect(result).to eq(10)
  end

  it "gets exception" do

    expect {cart.add_item(15)}.to raise_error(ItemExceed, "ItemExceed. You can add more items by #{20-cart.items}")
  end
end


RSpec.describe 'Remove item: '  do

  it "remove item to cart" do
      result = cart.remove_item(3)
      expect(result).to eq(7)
  end

  it "gets exception" do

    expect {cart.remove_item(15)}.to raise_error(LessItem, "you can't remove items more then #{cart.items}")
  end
end

RSpec.describe 'Price : '  do

  it "before discount" do
      result = cart.price_without_discount
      expect(result).to eq(700.0)
  end

  it "before discount" do
    result = cart.price_after_discount
    expect(result).to eq(630.0)
  end
end
