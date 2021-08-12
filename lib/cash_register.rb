class CashRegister
    attr_accessor :discount, :total, :items


    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity
    end

    def apply_discount
        if @discount != 0
            @total -= @total * (0.01 * @discount)
            "After the discount, the total comes to $#{@total.to_int}."
        else 
            "There is no discount to apply."
        end
    end

end