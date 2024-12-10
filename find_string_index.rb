def find_index(s_arr,check)
  for i in 0..s_arr.length-1
    if s_arr[i]==check
      return i
    end
  end
  return -1
end

print "Enter the size of an array: "
n = gets.chomp.to_i
s_arr = []

for i in 0..n-1
  print "Enter string: "
  s_arr[i] = gets.chomp
end

print "Enter string to check index: "
check = gets.chomp 
puts find_index(s_arr,check)