class MinimumSum
  def minimum_sum(matrix)
    min_val = Float::INFINITY

    matrix.each do |row|
      row_min = row.min
      min_val = row_min if row_min < min_val
    end

    min_val * matrix.length
  end
end
