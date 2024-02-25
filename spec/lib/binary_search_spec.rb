require 'spec_helper'
require 'binary_search'

describe "Busca_binaria" do
  it "retorna o índice do elemento se estiver presente no array" do
    array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    alvo = 8
    expect(busca_binaria(array, alvo)).to eq(7) # Note que o índice de 8 em um array baseado em zero é 7
  end
end




