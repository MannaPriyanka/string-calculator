# string_calculator.rb
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    # If custom delimiter is provided
    if numbers.start_with?("//")
      delimiter_section, numbers = numbers.split("\n", 2)
      delimiter_part = delimiter_section[2..] 

      if delimiter_part.start_with?("[") && delimiter_part.end_with?("]")
        delimiters = delimiter_part.scan(/\[([^\]]+)\]/).flatten
      else
        delimiters = [delimiter_part]
      end

      delimiters.each do |delimiter|
        numbers = numbers.gsub(delimiter, ",")
      end
    else
      delimiters = [","]  # Default delimiter is comma
    end

    # Replace all newlines with commas and split numbers
    numbers = numbers.gsub("\n", ",")
    num_array = numbers.split(",").map(&:to_i)

    negatives = num_array.select { |n| n < 0 }
    if negatives.any?
      raise "Negative numbers not allowed: #{negatives.join(', ')}"
    end

    # Ignore numbers greater than 1000
    num_array = num_array.select { |n| n <= 1000 }

    num_array.sum
  end
end
