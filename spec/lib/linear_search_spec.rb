
require 'rspec'
require_relative '../spec_helper'
require_relative '../../lib/linear_search'

RSpec.describe '#linear_search' do
  it ' retorna o indice da chave se ela estiver presente no array' do
    arr = [10, 50, 30, 70, 80, 20, 90, 40]
    key = 30
    expect(linear_search(arr, key)).to eq(2)
  end

  it 'retorna -1 se a chave nao estiver presente no array ' do
    arr = [10, 50, 30, 70, 80, 20, 90, 40]
    key = 100
    expect(linear_search(arr, key)).to eq(-1)
  end

end