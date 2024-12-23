def merge_sort(arr)
  return arr if arr.length <=1

  mid = arr.length/2

  left = merge_sort(arr[0..mid-1])
  right = merge_sort(arr[mid..arr.length-1])

  merge(left, right)
end

def merge(left, right)
  ans = []
  until left.empty? || right.empty?
    if left.first < right.first
      ans << left.shift
    else
      ans << right.shift
    end
  end
  ans + left + right
end

arr = [9,2,5]
arr = merge_sort(arr)
puts arr.inspect