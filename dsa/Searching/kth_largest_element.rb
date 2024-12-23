def quickselect(arr, k)
  k = arr.length - k
  quickselect_helper(arr, 0, arr.length - 1, k)
end

def quickselect_helper(arr, left, right, k)
  return arr[left] if left == right

  pivot = partition(arr, left, right)

  if pivot == k
    arr[pivot]
  elsif pivot < k
    quickselect_helper(arr, pivot + 1, right, k)
  else
    quickselect_helper(arr, left, pivot - 1, k)
  end
end

def partition(arr, left, right)
  pivot = arr[right]
  i = left
  (left...right).each do |j|
    if arr[j] < pivot
      arr[i], arr[j] = arr[j], arr[i]
      i += 1
    end
  end
  arr[i], arr[right] = arr[right], arr[i]
  i
end

arr = [3, 2, 1, 5, 6, 4]
k = 2
puts quickselect(arr, k)
