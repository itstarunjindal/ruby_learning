require_relative 'string_manipulator'

manipulator = StringManipulator.new

RSpec.describe 'Reverse words' do
  
  it 'reverse a word in a string' do
    expect(manipulator.reverse_words('hello world')).to eq('world hello')
  end

  it 'reverse string with punctuation' do
    expect(manipulator.reverse_words('hello, world!')).to eq('world! hello,')
  end

  it 'reverse string extra space' do
    expect(manipulator.reverse_words('hello    world')).to eq('world hello')
  end

  it 'empty string' do
    expect(manipulator.reverse_words('')).to eq('')
  end

end

RSpec.describe 'Capitalize words' do
  
  it 'capitalize words of a string' do
    expect(manipulator.capitalize_words('hello world')).to eq('Hello World')
  end

  it 'capitalize string with punctuation' do
    expect(manipulator.capitalize_words('hello, world!')).to eq('Hello, World!')
  end

  it 'empty string' do
    expect(manipulator.capitalize_words('')).to eq('')
  end
end
