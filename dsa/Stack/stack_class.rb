class Stack
  attr_accessor :stack
  def initialize
    @stack = []
  end

  def push(integer)
    @stack << integer
    #or @stack.push(integer)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def isEmpty
    @stack.empty?
  end

end

# stack = Stack.new
# stack.push(5)
# stack.push(7)
# stack.push(2)
# puts stack.stack.inspect

# stack.pop
# puts stack.stack.inspect

# puts stack.peek

# stack.pop
# stack.pop
# puts stack.isEmpty