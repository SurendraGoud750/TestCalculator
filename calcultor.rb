# calculator.rb
def add(numbers)
  return 0 if numbers.empty?

  if numbers.start_with?("//")
    delimiters = numbers[2..-1].split('][').map { |d| d.gsub('[', '').gsub(']', '') }
    numbers = numbers.split("\n", 2).last
  else
    delimiters = [","]
  end

  delimiters.each do |delimiter|
    numbers = numbers.gsub(delimiter, ",")
  end

  number_array = numbers.split(',')
  numbers = number_array.map(&:to_i)

  # Check for negative numbers
  negative_numbers = numbers.select { |n| n < 0 }
  raise "Negative numbers not allowed: #{negative_numbers.join(', ')}" unless negative_numbers.empty?

  numbers.sum
end
