class EmptyString < StandardError; end

class User
  attr_accessor :name, :email

  def initialize(name,email = "")
    @name = name
    @email = email
  end

  def validate
    if @email == ""
      raise EmptyString, "Email is not present"
    end

    regex = /[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]+/
    if @email.match?(regex)
      "valid"
    else
      "Invalid"
    end
  end
end


# user = User.new("user","user@example.com")
# result = user.validate

# puts result