# Busca binaria

def busca_binaria(array, alvo)
  esquerda = 0
  direita = array.length - 1

  while  esquerda <= direita
    meio = (esquerda + direita) / 2

    if array[meio] == alvo
      return  meio

    elsif array[meio] < alvo
      esquerda = meio + 1

    else
      direita = meio - 1
    end
  end

  nil - 1
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9,]
alvo = 8

puts busca_binaria(array, alvo)
