def max_subarray_sum(arr)
  current = arr[0]
  max = arr[0]

  arr[1..-1].each do |num|
    current = [num, current + num].max
    max = [max, current].max
  end

  max
end

arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
puts max_subarray_sum(arr)
