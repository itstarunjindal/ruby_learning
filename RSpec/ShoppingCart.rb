class ItemExceed < StandardError; end
class LessItem < StandardError; end

class Cart
  attr_accessor :items

  def initialize(items = 0)
    @items = items
  end

  def add_item(items)
    if @items+items> 20
      raise ItemExceed, "ItemExceed. You can add more items by #{20-@items}"
    end
    @items+=items
  end

  def remove_item(items)
    if @items-items<0
      raise LessItem, "you can't remove items more then #{@items}"
    end
    @items-=items
  end

  def item_count
    return @items
  end

  def price_without_discount
    @items*100.0
  end

  def price_after_discount
    return applydiscount
  end

  private 
  def applydiscount
  
    case @items
    when 10..20
      return price_without_discount*0.8
    when 5..10
      return price_without_discount*0.9
    else
      return price_without_discount
    end
  end

end
