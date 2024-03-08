# frozen_string_literal: true

require_relative '../spec_helper'
require_relative '../../lib/MinimumSum'

RSpec.describe MinimumSum do
  describe '#minimum_sum' do
    it 'calculates the minimum sum of the given matrix' do
      matrix = [
        [5, 1, 3],
        [9, 5, 6],
        [2, 8, 9]
      ]
      min_sum_calculator = MinimumSum.new
      expect(min_sum_calculator.minimum_sum(matrix)).to eq(9) # A soma mínima esperada é 9
    end
  end
end
