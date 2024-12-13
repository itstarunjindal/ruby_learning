class InsufficientBalance < StandardError; end

class BankAccount
  attr_accessor :name, :balance

  def initialize(name,amount=0)
    @name = name
    @balance = amount
  end

  def deposit(amount)
    @balance+=amount
    @balance
  end

  def withdraw(amount)
    if amount>@balance
      raise InsufficientBalance, "Low Balance"
    end
    @balance-=amount
    @balance
  end

  def check_balance
    @balance
  end
  
end