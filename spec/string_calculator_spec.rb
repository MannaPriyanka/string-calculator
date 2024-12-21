# spec/string_calculator_spec.rb
require './string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number itself for single numeric input' do
      calculator = StringCalculator.new
      expect(calculator.add("1")).to eq(1)
    end

    it 'returns 0 for a non-numeric input' do
      calculator = StringCalculator.new
      expect(calculator.add("abc")).to eq(0)
    end
  end
end