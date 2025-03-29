# spec/calculator_spec.rb
require 'calcultor'

RSpec.describe 'Calculator' do
  it 'returns 0 for an empty string' do
    expect(add('')).to eq(0)
  end

  it 'returns the sum of a single number' do
    expect(add('1')).to eq(1)
  end

  it 'returns the sum of two numbers' do
    expect(add('1,2')).to eq(3)
  end
end
