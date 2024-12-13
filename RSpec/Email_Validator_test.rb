require_relative 'Email_Validator'

RSpec.describe 'Valid Email' do
  it 'email not present' do
    user = User.new("abc")

    expect {user.validate}.to raise_error(EmptyString, "Email is not present")
  end
end

RSpec.describe 'Valid Email' do
  it 'email should be valid' do
    user = User.new("user","user@example.com")
    result = user.validate
    expect(result).to eq("valid")
  end
end


RSpec.describe 'Valid Email' do
  it 'email should not valid' do
    user = User.new("user","user@com@")
    result = user.validate
    expect(result).to eq("Invalid")
  end
end
