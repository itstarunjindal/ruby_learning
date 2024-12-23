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

left = [1,2,5]
right = [1,6,8]
arr = merge(left, right)
puts arr.inspect