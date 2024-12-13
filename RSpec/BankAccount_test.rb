require_relative 'BankAccount'

RSpec.describe 'BankAccount' do
  
  user = BankAccount.new("abc",500)
  
  it 'add amount' do

    result = user.deposit(500)
    expect(result).to eq(1000)
  end

  it 'withdraw amount' do

    result = user.withdraw(800)
    expect(result).to eq(200)
  end

  it 'exception insufficent balance' do

    expect {user.withdraw(500)}.to raise_error(InsufficientBalance, "Low Balance")
  end

  it 'check balance' do

    result = user.check_balance
    expect(result).to eq(200)
  end
end