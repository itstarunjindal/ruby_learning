require_relative 'stack_class'

def reverse_notation(string)
  stack = Stack.new
  for i in 0...string.length
    s = string[i]

    if s == '+' && !stack.isEmpty
      x = stack.pop
      if !stack.isEmpty
        stack.push(stack.pop+x)
      end
    elsif s == '-' && !stack.isEmpty
      x = stack.pop
      if !stack.isEmpty
        stack.push(stack.pop-x)
      end
    elsif s == '*' && !stack.isEmpty
      x = stack.pop
      if !stack.isEmpty
        stack.push(stack.pop*x)
      end
    elsif s == '/' && !stack.isEmpty
      x = stack.pop
      if !stack.isEmpty
        stack.push(stack.pop/x)
      end
    else
      stack.push(s.to_i)
    end
  end
  stack.peek
end

puts reverse_notation("52*")
puts reverse_notation("52+3-45*+")

