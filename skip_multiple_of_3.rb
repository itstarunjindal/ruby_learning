puts "Printing numbers 1 to 20 except multiple of 3"

for i in 1..20
  next if i%3 == 0
  puts i
end