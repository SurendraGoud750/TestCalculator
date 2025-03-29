# calculator.rb
def add(numbers)
  return 0 if numbers.empty?

  if numbers.start_with?("//")
    delimiter = numbers[2]
    numbers = numbers.split("\n", 2).last
  else
    delimiter = ","
  end

  numbers = numbers.gsub("\n", delimiter)
  number_array = numbers.split(delimiter)
  numbers = number_array.map(&:to_i)

  negative_numbers = numbers.select { |n| n < 0 }
  raise "Negative numbers not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?
  
  numbers.sum
end
