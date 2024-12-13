class ArgumentError < StandardError; end

class Calculator
  def addition(x,y)
    return x+y
  end

  def subtraction(x,y)
    return x-y
  end

  def multiplication(x,y)
    return x*y
  end


  def division(x,y)
    if y==0
      raise ArgumentError, "Division by zero"
    end
    return x/y
  end
end

