require_relative '../../lib/MaximizeArray' # Importar o código da classe MaximizeArray
require 'rspec'
require_relative '../spec_helper'


RSpec.describe MaximizeArray do
  describe "#maximize_sum_after_negations" do
    context "when k is 1" do
      it "returns the maximum sum after one negation" do
        arr = [4, 2, 3]
        maximizer = MaximizeArray.new(arr)
        k = 1
        result = maximizer.maximize_sum_after_negations(k)
        expect(result).to eq(9) # O resultado esperado é 9
      end
    end

    context "when k is 2" do
      it "returns the maximum sum after two negations" do
        arr = [4, 2, 3]
        maximizer = MaximizeArray.new(arr)
        k = 2
        result = maximizer.maximize_sum_after_negations(k)
        expect(result).to eq(10) # O resultado esperado é 10
      end
    end

    context "when k is greater than the length of the array" do
      it "returns the maximum sum after negating all elements" do
        arr = [4, 2, 3]
        maximizer = MaximizeArray.new(arr)
        k = 4
        result = maximizer.maximize_sum_after_negations(k)
        expect(result).to eq(9) # O resultado esperado é 9, pois todos os elementos serão negados duas vezes
      end
    end

    context "when the array contains negative numbers" do
      it "returns the maximum sum after negations" do
        arr = [-2, 4, 5, -1]
        maximizer = MaximizeArray.new(arr)
        k = 2
        result = maximizer.maximize_sum_after_negations(k)
        expect(result).to eq(12) # O resultado esperado é 12
      end
    end

    context "when all elements are negative" do
      it "returns the maximum sum after negations" do
        arr = [-3, -1, -2, -4]
        maximizer = MaximizeArray.new(arr)
        k = 3
        result = maximizer.maximize_sum_after_negations(k)
        expect(result).to eq(10) # O resultado esperado é 10
      end
    end
  end
end