def flag(arr)
  low,mid,high = 0,0,arr.length-1
  while mid <= high
    case arr[mid]
    when 0
      arr[low],arr[mid] = arr[mid],arr[low]
      low += 1
      mid += 1
    when 1
      mid += 1
    when 2
      arr[mid],arr[high] = arr[high],arr[mid]
      high -= 1
    end
  end
  arr
  
end

arr = [2,0,2,1,1,0]
print flag(arr)