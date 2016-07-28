class CashRegister
  attr_accessor :total, :discount, :item, :cart, :receipt
    def initialize(discount=20)
      @total = 0
      @discount = discount
      @cart = []
      @receipt = []
    end

    def add_item(item, price ,quantity = 1)
      @item = item
      cart << [item] * quantity
      @receipt << price
      self.total += (price * quantity)
    end

    def apply_discount
       self.total -= (self.total * (self.discount)/100)
       if self.total == 0
         "There is no discount to apply."
       else
          "After the discount, the total comes to $#{self.total}."
        end
    end
    def items
      cart.flatten!
    end
    def void_last_transaction
      self.total -= receipt.pop
      self.total
    end
  end
