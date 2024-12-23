def missing(arr)
  sum = arr.sum
  x = (arr.length * (arr.length + 1)) / 2
  x - sum
end

arr = [0,2,3]
puts missing(arr)