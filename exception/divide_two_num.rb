begin 
  puts "Enter the first number: "
  num1 = gets.chomp.to_i
  puts "Enter the second number non zero: "
  num2 = gets.chomp.to_i
  div = num1/num2
  
rescue ZeroDivisionError => e
  puts "Error: #{e.message}"
end
