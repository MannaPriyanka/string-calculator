# string_calculator.rb
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    # If custom delimiter is provided
    if numbers.start_with?("//")
      delimiter = numbers[2]  # Extract the custom delimiter
      numbers = numbers[4..-1]
    else
      delimiter = ","  # Default delimiter is comma
    end

    # Replace newlines with the delimiter and split the numbers
    numbers = numbers.gsub("\n", delimiter)
    num_array = numbers.split(delimiter).map(&:to_i)

    negatives = num_array.select { |n| n < 0 }
    
    if negatives.any?
      raise "Negative numbers not allowed: #{negatives.join(', ')}"
    end

    # Ignore numbers greater than 1000
    num_array = num_array.select { |n| n <= 1000 }

    num_array.sum
  end
end
