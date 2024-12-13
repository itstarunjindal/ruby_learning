class EmptyString < StandardError; end

class Palindrome
  attr_accessor :string

  def initialize(string="")
    @string = string
  end

  def is_palindrome
      if @string == ""
        raise EmptyString, "String not given"
    end
    check_string
  end

  private
  def check_string
    s = @string.downcase
    i = 0
    j = s.length-1
    while(i<j)
      if s[i]!=s[j]
        return false
      end
      i+=1
      j-=1
    end
    return true
  end
end

