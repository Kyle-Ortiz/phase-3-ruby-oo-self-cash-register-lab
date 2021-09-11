class CashRegister

     attr_accessor :total, :discount

     def initialize(discount = 20)
          self.total = 0
          if discount > 0 
               self.discount = (100 - discount)/100
               self.apply_discount
          end
     end

     def add_item (item, price, quantity = 1)
          transaction_total = price * quantity
          self.total += transaction_total
          @last_transaction = [item, price, quantity]
     end

     def apply_discount
          self.total = @total * @discount
          puts "After the discount, the total comes to $#{total}."
     end

end