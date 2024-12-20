def linear_search(arr,target)
  arr.each_with_index do |value, index| 
    return index if target == value
  end
  -1
end

arr = [4,5,8,1,9,2]
puts linear_search(arr,5)