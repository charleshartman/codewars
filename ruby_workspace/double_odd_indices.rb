
# double_odd_indices.rb

def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  p doubled_numbers
end

my_numbers = [2, 1, 17, 5, 53, 16, 7, 13, 47]
double_odd_indices(my_numbers) # => [2, 2, 17, 10, 53, 32, 7, 26, 47] 

