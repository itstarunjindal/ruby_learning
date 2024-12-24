require_relative 'stack_class'

def isValid(string)
  stack = Stack.new
  for i in 0..string.length-1
    s = string[i]
    if(stack.isEmpty)
      stack.push(s)
    elsif(stack.peek == '(' && s == ')')
      stack.pop
    elsif(stack.peek=='{' && s=='}')
      stack.pop
    elsif(stack.peek=='[' && s==']')
      stack.pop
    else
      stack.push(s)
    end
  end
  stack.isEmpty
end

puts isValid("(({[]}))")
puts isValid("}){(")