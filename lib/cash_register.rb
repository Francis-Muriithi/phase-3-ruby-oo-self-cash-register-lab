

class CashRegister 
    attr_reader :discount
    attr_accessor :total
    def initialize(discount= 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item (title, price, amount= 1)
        @total += price * amount
    end

    def apply_discount(discount= 0)
        new_discount = @total * @discount/100
        unless new_discount == 0
        @total -= new_discount
        "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items (item)
        if quantity>1
            i=0
            while i<quantity
              @items << title
              i+=1
            end
          else
            @items << title
          end
    end
    def void_last_transaction()
        @total -= @last_transaction_amount
      end
end



