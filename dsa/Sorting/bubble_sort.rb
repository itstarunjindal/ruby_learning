def bubble(arr)
  n = arr.length
  (n-1).times do
    (0..n-2).each do |i|
      if arr[i]>arr[i+1]
        arr[i],arr[i+1] = arr[i+1],arr[i] # swap the number
      end
    end
  end
  arr
end
arr = [9,2,5]
bubble(arr)
puts arr.inspect