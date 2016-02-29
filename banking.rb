#a mock bank Account that displays balances and transfer funds, and makes sure the user's PIN  is correct before completing transactions.
class Account
    attr_reader :name
    attr_reader :balance
    
    private 
    
    def pin
        @pin = 1234
    end
    
    def pin_error
      "Access denied: incorrect PIN."
    end
    
    public
    
    def display_balance (pin_number)
       if pin
           puts "Balance: $#{@balance}."
        else
            puts pin_error
        end
    end
    
    def withdraw(pin_number, amount)
        if pin_number == pin
            if @balance-amount > 0
            @balance -= amount
            puts "Withdrew #{amount}. New balance:         $#{@balance}."
        else
            puts "Insufficent funds"
        end
    else 
        puts pin_error
        
    end
    end
    
    def deposit(pin_number, amount)
          if pin_number == pin
            @balance += amount
            puts "Depotit #{amount}. New balance:         $#{@balance}."
    else 
        puts pin_error
        
    end
    end
    
    
    
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end
    
end

dmckillop123456789 = Account.new("Donovan",1_000_000_000)
dmckillop123456789.withdraw(11, 500_000)
dmckillop123456789.display_balance(1234)
dmckillop123456789.withdraw(1234, 500_000)
dmckillop123456789.display_balance(1234)
