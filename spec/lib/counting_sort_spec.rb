require 'rspec'

def counting_sort(array, max_value)
  count_array = Array.new(max_value + 1, 0)
  array.each { |element| count_array[element] += 1 }
  (1..max_value).each { |i| count_array[i] += count_array[i - 1] }
  sorted_array = Array.new(array.length)
  array.reverse_each do |element|
    count_array[element] -= 1
    sorted_array[count_array[element]] = element
  end
  array.replace(sorted_array)
end

RSpec.describe 'Counting Sort' do
  it 'sorts an array of integers' do
    array = [5, 3, 2, 8, 4, 7, 6, 1]
    max_value = array.max
    counting_sort(array, max_value)
    expect(array).to eq([1, 2, 3, 4, 5, 6, 7, 8])
  end

  it 'sorts an empty array' do
    array = []
    max_value = 0
    counting_sort(array, max_value)
    expect(array).to eq([])
  end

  it 'sorts an array with repeated elements' do
    array = [5, 3, 1, 5, 2, 3, 4, 1]
    max_value = array.max
    counting_sort(array, max_value)
    expect(array).to eq([1, 1, 2, 3, 3, 4, 5, 5])
  end
  it 'sorts an array with repeated elements' do
    array = [10, 3, 11, 53, 12, 31, 43, 15]
    max_value = array.max
    counting_sort(array, max_value)
    expect(array).to eq([3, 10, 11, 12, 15, 31, 43, 53])
  end
end
