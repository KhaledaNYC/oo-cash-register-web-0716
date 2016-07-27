require 'pry'
class CashRegister
  attr_accessor :total
  def initialize(total = 0)
    @total = total
    @discount = discount
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
    percent_discount = discount.to_f / 100
    actual_discount = total * percent_discount
    @total =  total.to_f - actual_discount
    @total
  end
end
