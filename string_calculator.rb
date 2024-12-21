# string_calculator.rb
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.match(/^\d+$/)

    0
  end
end
