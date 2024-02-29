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
end

# Testando o algoritmo
arr = [64, 34, 25, 12, 22, 11, 90]
bubble_sort(arr)
puts "Lista ordenada:"
arr.each do |element|
  puts element
end
