loop do
  print "Enter a digit b/w 1 to 10: "
  n = gets.chomp.to_i

  if n>0 && n<=10
    print "You entered a valid integer"
    break
  else
    puts "please enter a valid integer: "
    redo
  end
end



