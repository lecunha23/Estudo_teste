# Teste para verificar se o Bubble Sort funciona corretamente
require_relative '../spec_helper'
require_relative '../../lib/bubble_sort'  # Supondo que sua função bubble_sort está em um arquivo chamado bubble_sort.rb

RSpec.describe "bubble_sort" do
  it "ordena corretamente uma lista desordenada" do
    input_arr = [64, 34, 25, 32, 22, 11, 90]
    expected_arr = [11, 22, 25, 32, 34, 64, 90]
    sorted_arr = bubble_sort(input_arr)
    expect(sorted_arr).to eq(expected_arr)
  end
end