require_relative 'palindrome'

RSpec.describe 'Palindrome:' do
  it 'is string palindrome' do

    pal = Palindrome.new("asa")
    result = pal.is_palindrome

    expect(result).to be true
  end

  it 'not palindrome string' do
    pal = Palindrome.new("ass")
    result = pal.is_palindrome

    expect(result).to be false
  end

  it 'empty string error' do
    pal = Palindrome.new("")

    expect {pal.is_palindrome}.to raise_error(EmptyString, "String not given")
  end
end