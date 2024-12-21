# string_calculator.rb
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.match(/^\d+$/)
    
    # Handle numbers separated by a comma
    if numbers.include?(',')
      num_array = numbers.split(',').map(&:to_i)
      return num_array.sum
    end

    0
  end
end
