require_relative 'stack_class'
class Queue
  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  def push(x)
    while(!@s1.isEmpty)
      @s2.push(@s1.pop);
    end
    @s1.push(x)
    while(!@s2.isEmpty)
      @s1.push(@s2.pop());
    end
  end
  
  def peek
    @s1.peek
  end

  def pop
    if @s1.isEmpty
      return -1
    end
    @s1.pop
  end

  def isEmpty
    @s1.isEmpty
  end

end

queue = Queue.new
queue.push(5)
queue.push(7)
queue.push(9)
# puts queue.pop
# puts queue.pop
puts queue.peek
puts queue.isEmpty