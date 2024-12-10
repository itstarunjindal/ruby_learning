print "Enter number of integer: "
n = gets.chomp.to_i

arr = []

print "Enter integer: "
for i in 0..n-1
  arr[i] = gets.chomp.to_i
end

for i in 0..n-1
  if arr[i]%7==0
    break; #break statement used
  end
  puts arr[i]
end