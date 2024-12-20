def selection(arr)
  n = arr.length
  (0..n-1).each do |i|
    min_index = i
    (i+1..n-1).each do |j|
      min_index = j if arr[j]<arr[min_index]
    end
    arr[i],arr[min_index] = arr[min_index],arr[i]
  end
  arr
end

arr = [9,2,5]
selection(arr)
puts arr.inspect