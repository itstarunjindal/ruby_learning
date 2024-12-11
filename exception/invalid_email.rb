class InvalidEmailError < StandardError
  def initialize(msg = "Email is not valid")
    super(msg)
  end
end


print "Enter your email: "
email = gets.chomp

verify = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/

begin
  unless email.match?(verify)
    raise InvalidEmailError
  end
  puts "Email is valid"
rescue InvalidEmailError => e
  puts e.message 
end
