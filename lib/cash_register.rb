require 'pry'
class CashRegister
  attr_accessor :total
  def initialize(total = 0)
    @total = total
  end
  def discount
    @discount = 20
  end
  def add_item(item,price,quantity = 1)
    @price = price
    @item = item
    @quantity = quantity
    @total += (@price * @quantity)
  end
  def apply_discount
    @total -= (@total * (self.discount)/100)

  end
end
