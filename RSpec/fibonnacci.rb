class Fabonacci
  attr_accessor :num
  def initialize(n)
    @num = n
  end

  def find_fibonacci
    raise ArgumentError, 'Number must be a integer' if !@num.is_a?(Integer)

    raise ArgumentError, 'Number must be non-negative' if 0>@num

    return [] if @num == 0
    return [0] if @num == 1

    fib = [0,1]

    for i in 2..@num-1
      fib[i] = fib[i-1]+fib[i-2]
    end
    fib
  end
end