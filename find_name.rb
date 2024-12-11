print "Enter the size of an array: "
n = gets.chomp.to_i
s_arr = []

for i in 0..n-1
  print "Enter string: "
  s_arr[i] = gets.chomp
end

print "Enter string to check index: "
check = gets.chomp

i = 0


catch(:name_found) do
  s_arr.each.with_index do |name ,index|
    if name == check
      puts "Name found at position #{index+1}"
      throw(:name_found)
    end
  end
end

