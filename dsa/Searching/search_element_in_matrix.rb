def search_matrix(matrix, target)
  m = matrix.length
  n = matrix[0].length

  left = 0
  right = n*m-1

  while left <= right
    mid = (left+right)/2
    row = mid/n
    col = mid%n
    mid = matrix[row][col]

    if mid == target
      return true
    elsif mid < target
      left = mid+1
    else
      right = mid-1
    end
  end
  false
end

matrix = [[1,2,3],[4,5,6],[7,8,9]]

target = 3
puts search_matrix(matrix, target)

target = 13
puts search_matrix(matrix, target)