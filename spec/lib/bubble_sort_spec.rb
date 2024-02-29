# Teste para verificar se o Bubble Sort funciona corretamente
require_relative '../spec_helper'
require '../../lib/bubble_sort'

def bubble_sort
  arr = [64, 34, 25, 12, 22, 11, 90]
  sorted_arr = bubble_sort(arr)
  expected_arr = [11, 12, 22, 25, 34, 64, 90]

  if sorted_arr == expected_arr
    puts "Teste passou: O array foi ordenado corretamente."
  else
    puts "Teste falhou: O array não foi ordenado corretamente."
  end
end