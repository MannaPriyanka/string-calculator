# string_calculator.rb
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    numbers = numbers.gsub("\n", ",").strip # Replace all newlines with commas 
    
    # Handle numbers separated by a comma
    num_array = numbers.split(',').map(&:to_i)
    
    return num_array.sum
  end
end
