def peak(arr)
  low = 0
  high = arr.length-1
  mid = low+(high - low)/2
  while low<high 
    # mid = (low+high)/2
    if arr[mid] < arr[mid+1]
      low = mid+1
    else
      high = mid
    end
    mid = low+(high - low)/2
  end
  return low
end

arr = [1,2,3,1]
puts peak(arr)

