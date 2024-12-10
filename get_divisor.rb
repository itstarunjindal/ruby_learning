print "Enter a divident: "
n = gets.chomp.to_i

x = 0

count = 0
loop do
  print "Enter a non 0 divisor: "
  x = gets.chomp.to_i
  
  if x == 0
    puts "You enter 0 as divisor"
    count+=1
    redo
  else
    print "get valid divisor after #{count} attemps"
    break
  end
end