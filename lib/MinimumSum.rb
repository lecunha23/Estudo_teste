class MinimumSum
  def minimum_sum(matrix)
    min_val = matrix.flatten.min
    return min_val * (matrix.length - 1)
  end
end