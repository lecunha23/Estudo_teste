require 'rspec'
require_relative '../spec_helper'
require_relative '../../lib/MinimumSum'

RSpec.describe MinimumSum do
  describe "#minimun_sum" do
    it "calculates the minimum sum of the given matrix" do
      matrix = [
        [5, 2, 3],
        [9, 5, 6],
        [2, 8, 9]
      ]
      min_sum_calculator = MinimumSum.new
      expect(min_sum_calculator.minimun_sun(matrix)).to eq(9) # A soma mínima esperada é 9
    end

    it "handles a matrix with negative numbers correctly" do
      matrix = [
        [-5, -2, -3],
        [-9, -5, -6],
        [-2, -8, -9]
      ]
      min_sum_calculator = MinimumSum.new
      expect(min_sum_calculator.minimun_sun(matrix)).to eq(-24) # A soma mínima esperada é -24
    end

    it "handles a matrix with zeros correctly" do
      matrix = [
        [0, 0, 0],
        [0, 0, 0],
        [0, 0, 0]
      ]
      min_sum_calculator = MinimumSum.new
      expect(min_sum_calculator.minimun_sun(matrix)).to eq(0) # A soma mínima esperada é 0
    end
  end
end
