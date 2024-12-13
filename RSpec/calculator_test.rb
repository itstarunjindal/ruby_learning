require 'rspec'
require_relative 'calculator'

RSpec.describe 'Calculator' do
  it 'addition two integer' do
    
    calculator = Calculator.new
    result = calculator.addition(2,3)

    expect(result).to eq(5)
  end
end

RSpec.describe 'Calculator' do
  it 'subtract two integer' do

    calculator = Calculator.new
    result = calculator.subtraction(5,3)

    expect(result).to eq(2)
  end
end

RSpec.describe 'Calculator' do
  it 'multiply two integer' do

    calculator = Calculator.new
    result = calculator.multiplication(8,3)

    expect(result).to eq(24)
  end
end

RSpec.describe 'Division' do
  it 'Divide two number' do

    calculator = Calculator.new
    result = calculator.division(4,2)

    expect(result).to eq(2)
  end
end

RSpec.describe 'Division' do
  it 'Raising exception argument error' do

    calculator = Calculator.new

    expect {calculator.division(10,0)}.to raise_error(ArgumentError)
  end
end

RSpec.describe 'Division' do
  it 'Raising exception with statement' do

    calculator = Calculator.new

    expect {calculator.division(4,0)}.to raise_error(ArgumentError, "Division by zero")
  end
end

RSpec.describe 'Division' do
  it 'Not raising exception' do

    calculator = Calculator.new

    expect {calculator.division(9,3)}.not_to raise_error
  end
end
