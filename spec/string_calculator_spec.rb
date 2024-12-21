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

    it 'returns the sum of numbers separated by a comma' do
      calculator = StringCalculator.new
      expect(calculator.add("1,5")).to eq(6)
    end

    it 'returns the sum of multiple numbers separated by a comma' do
      calculator = StringCalculator.new
      expect(calculator.add("1,5,6")).to eq(12)
    end

    it 'returns the sum of numbers with newline separators' do
      calculator = StringCalculator.new
      expect(calculator.add("1\n2\n3")).to eq(6) # Should return 1 + 2 + 3 = 6
    end

    it 'returns the sum of numbers with combination of comma and newline separators' do
      calculator = StringCalculator.new
      expect(calculator.add("1,2\n3")).to eq(6) # Should return 1 + 2 + 3 = 6
    end

    it 'returns the sum of numbers with a custom delimiter' do
      calculator = StringCalculator.new
      expect(calculator.add("//;\n1;2;3")).to eq(6)
    end

    it 'returns the sum of numbers with a custom delimiter and newlines' do
      calculator = StringCalculator.new
      expect(calculator.add("//;\n1;2\n3")).to eq(6)
    end
  end
end
