def quick(arr)
  return arr if arr.length <= 1
  pivot = arr.delete_at(0)
  left,right = arr.partition {|x| x <= pivot}
  quick(left) + [pivot] + quick(right)
end

arr = [9,2,5]
arr = quick(arr)
puts arr.inspect