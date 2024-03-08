class MinimumSum
  def minimum_sum(matrix)
    min_val = matrix.flatten.min
    min_val * (matrix.flatten.length - 1)
  end
end