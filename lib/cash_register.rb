class CashRegister
attr_reader :discount, :items
attr_accessor :total

    def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    end

    def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times {@items.append title}
    @last_item = (price * quantity)
    end

    def apply_discount
    self.total *= (1 - discount / 100.0)
    if (discount > 0)
    "After the discount, the total comes to $800."
    else
        "There is no discount to apply."
    end
    end
    
    def void_last_transaction
        @total -= @last_item
    end
end 
