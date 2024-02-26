# linear search

def linear_search(arr, key)
  #vai percorrer o arrey
  for i in 0... arr.length
    # vai verificar se o elemento atual e igual a chave
    if arr[i] == key
      #vai retornar o índice se a chave for encontrada
      return i
    end
  end
  # retorna -1 se a chave nao for encontrada
  return -1
end

arr = [10, 50, 30, 70, 80, 20, 90, 40]
key = 100

index = linear_search(arr, key)
if index != -1
  puts "A chave #{key} foi encontrada no índice #{index}."
else
  puts "A chave #{key} não foi encontrada no array."
end