def counting_sort(array, max_value)
  # Inicializar o array de contagem com zeros
  count_array = Array.new(max_value + 1, 0)

  # Contar a frequência de cada elemento
  array.each { |element| count_array[element] += 1 }

  # Atualizar o array de contagem para manter a posição correta de cada elemento
  (1..max_value).each { |i| count_array[i] += count_array[i - 1] }

  # Criar um array temporário para armazenar os elementos ordenados
  sorted_array = Array.new(array.length)

  # Preencher o array temporário com os elementos ordenados
  array.reverse_each do |element|
    count_array[element] -= 1
    sorted_array[count_array[element]] = element
  end

  # Copiar os elementos ordenados de volta para o array original
  array.replace(sorted_array)
end

# Exemplo de uso:
array = [4, 3, 2, 8, 3, 3, 1]
max_value = array.max
counting_sort(array, max_value)
puts "Array ordenado: #{array}"
