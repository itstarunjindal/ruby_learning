def rotate(matrix)
  n = matrix.length
  for i in 0...n
    for j in i+1...n
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    end
  end

  matrix.each {|row| row.reverse!}

  matrix
end

matrix = [[1,2,3],[4,5,6],[7,8,9]]
matrix = rotate(matrix)

matrix.each {|row| puts row.inspect }