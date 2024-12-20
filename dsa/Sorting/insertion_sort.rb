def insertion(arr)
  (1..arr.length-1).each do |i|
    key = arr[i]
    j = i-1
    while j>=0 && arr[j] > key
      arr[j+1] = arr[j]
      j-=1
    end
    arr[j+1] = key
  end
  arr
end

arr = [9,2,5]
insertion(arr)
puts arr.inspect