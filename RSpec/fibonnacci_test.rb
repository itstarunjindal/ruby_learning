require_relative 'fibonnacci'

RSpec.describe 'Fibonacci' do

  it 'When number is valid' do
    fib = Fabonacci.new(5)
    result = fib.find_fibonacci
    expect(result).to eq([0,1,1,2,3])
  end

  it 'When number is 0' do
    fib = Fabonacci.new(0)
    result = fib.find_fibonacci
    expect(result).to eq([])
  end

  it 'When number is 1' do
    fib = Fabonacci.new(1)
    result = fib.find_fibonacci
    expect(result).to eq([0])
  end

  it 'When number is negative' do
    fib = Fabonacci.new(-5)
    expect {fib.find_fibonacci}.to raise_error(ArgumentError, 'Number must be non-negative')
  end

  it 'When number is float' do
    fib = Fabonacci.new(3.5)
    expect {fib.find_fibonacci}.to raise_error(ArgumentError, 'Number must be a integer')
  end

  it 'When number not a integer' do
    fib = Fabonacci.new('abc')
    expect {fib.find_fibonacci}.to raise_error(ArgumentError, 'Number must be a integer')
  end
end
