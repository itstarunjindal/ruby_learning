def max_subarray_sum(arr)
  max_current = arr[0]
  max_global = arr[0]

  arr[1..-1].each do |num|
    max_current = [num, max_current + num].max
    max_global = [max_global, max_current].max
  end

  max_global
end

arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
puts max_subarray_sum(arr)
