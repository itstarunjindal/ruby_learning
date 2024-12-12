class NegativeAmount < StandardError; end
class InsufficientBalance < StandardError; end

class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    begin
      if amount<0
        raise NegativeAmount, "Amount you enter is negative"
      else
        @balance+=amount
        puts "Amount added and balance is #{@balance}"
      end
    rescue NegativeAmount => e
      puts "#{e.message}"
    end
  end

  def withdraw(amount)
    begin
      if amount<0
        raise NegativeAmount, "Amount you enter is negative"
      elsif amount>@balance
        raise InsufficientBalance, "Insufficient balance"
      else
        @balance-=amount
        puts "Amount withdraw."
      end
    rescue NegativeAmount => e
      puts "#{e.message}"
      
    rescue InsufficientBalance => e
      puts "#{e.message}"
    end
    
  end

  def balance
    puts "Your balance is #{@balance}"
  end
end

account = BankAccount.new(500)
account.deposit(100)
account.withdraw(800)
account.balance