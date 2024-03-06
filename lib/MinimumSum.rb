
class MinimumSum
  def minimun_sun(matrix)
    #vai iniciar a variavel para armazenar a soma minima
    min_sum = 0

    matrix.each do |row|
      #adiciona o menor valor da linha a soma minima
      min_sum += row.min
    end

    #retorna a soma minima
    return min_sum
  end
end

matrix = [
  [5, 2, 3],
  [9, 5, 6],
  [2, 8, 9]
]

# cria uma instancia da classe
min_sum_calculator = MinimumSum.new
puts "Soma minima da matriz #{min_sum_calculator.minimun_sun(matrix)}"