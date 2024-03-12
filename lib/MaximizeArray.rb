class MaximizeArray
  def initialize(arr)
    @arr = arr
  end

  def maximize_sum_after_negations(k)
    # Ordenar o array para manipular os valores negativos facilmente
    @arr.sort!

    i = 0
    # Percorrer o array enquanto houver negações restantes e enquanto o elemento atual for negativo
    while k.positive? && i < @arr.length && @arr[i] < 0
      @arr[i] = -@arr[i] # Negar o elemento atual
      k -= 1 # Decrementar o número de negações restantes
      i += 1 # Avançar para o próximo elemento
    end

    # Se ainda houver negações restantes ímpares, e o array não for esgotado, negar o menor valor absoluto
    if k.odd? && i < @arr.length
      @arr[i] = -@arr[i]
    end

    # Calcular e retornar a soma do array
    @arr.sum
  end
end

# Exemplo de uso
arr = [4, 2, 3]
maximizer = MaximizeArray.new(arr)
k = 1
result = maximizer.maximize_sum_after_negations(k)
puts "Array maximizado após #{k} negações: #{result}"