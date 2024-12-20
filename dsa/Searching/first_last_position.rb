def find_first(arr,target)
  low = 0
  high = arr.length
  result = -1
  while(low<=high)
    mid = (low+high)/2
    if arr[mid]==target
      result = mid
      high = mid-1
    elsif arr[mid] > target
      high = mid - 1
    else
      low = mid+1
    end
  end
  return result
end

def find_last(arr,target)
  low = 0
  high = arr.length
  result = -1
  while(low<=high)
    mid = (low+high)/2
    if arr[mid]==target
      result = mid
      low = mid+1
    elsif arr[mid]<target
      low = mid+1
    else
      high = mid-1
    end
  end
  result
end

arr = [1,7,7,7,9]
puts find_first(arr,7)
puts find_last(arr,7)