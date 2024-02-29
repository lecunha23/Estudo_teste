def bubble_sort(arr)
  n = arr.length
  # Percorre todos os elementos na lista
  (0...n).each do |i|
    # Últimos i elementos já estão no lugar certo
    (0...n-i-1).each do |j|
      # Troca se o elemento atual for maior que o próximo
      if arr[j] > arr[j+1]
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
  arr  # Retorna a lista ordenada
end
