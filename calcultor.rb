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
  number_array.map(&:to_i).sum
end
