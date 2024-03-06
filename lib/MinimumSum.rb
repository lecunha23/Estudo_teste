
class MinimumSum
  def minimun_su(matrix)
    #vai iniciar a variavel para armazenar a soma minima
    min_sum = 0

    matrix.each do |row|
      #adiciona o menor valor da linha a soma minima
      min_sum += row.min

    end
  end
end