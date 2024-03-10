# Teste para verificar se o Bubble Sort funciona corretamente
require_relative '../spec_helper'
require_relative '../../lib/bubble_sort'  # Supondo que sua função bubble_sort está em um arquivo chamado bubble_sort.rb

RSpec.describe "bubble_sort" do
  it "ordena corretamente uma lista desordenada" do
    input_arr = [64, 34, 26, 32, 22, 11, 90]
    expected_arr = [11, 22, 26, 32, 34, 64, 90]
    sorted_arr = bubble_sort(input_arr)
    expect(sorted_arr).to eq(expected_arr)

  end


    it "ordena corretamente uma lista desordenada" do
      input_arr = [9, 1, 6, 5, 8, 2, 3, 7, 4]
      expected_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      sorted_arr = bubble_sort(input_arr)
      expect(sorted_arr).to eq(expected_arr)
  end
end