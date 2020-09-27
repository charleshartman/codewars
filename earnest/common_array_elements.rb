# common_array_elements.rb
# 6 kyu

# Given three arrays of integers, return the sum of elements that are common
# in all three arrays.

=begin

def common(arr1, arr2, arr3)
  result = 0
  result += arr1.select { |num| arr2.include?(num) && arr3.include?(num) }.sum
  result
end

=end

=begin

def common(arr1, arr2, arr3)
  result = []
  convergence = arr1 & arr2 & arr3
  convergence.each do |num|
    result << num * ([arr1.count(num), arr2.count(num), arr3.count(num)].min)
  end
  result.sum
end

=end
=begin

def common(arr1, arr2, arr3)
  result = 0
  (arr1 & arr2 & arr3).each do |num|
    result += num * ([arr1.count(num), arr2.count(num), arr3.count(num)].min)
  end
  result
end

=end

def common(arr1, arr2, arr3)
  (arr1 & arr2 & arr3).inject(0) do |sum, num|
    sum += num * ([arr1.count(num), arr2.count(num), arr3.count(num)].min)
  end
end

p common([1,2,3],[5,3,2],[7,3,2]) == 5
p common([1,2,2,3],[5,3,2,2],[7,3,2,2]) == 7
p common([1],[1],[1]) == 1
p common([1],[1],[2]) == 0
p common([1,2,2,3],[5,3,2],[7,3,2,2]) == 5


=begin

<-PEDAC->
problem: 
  - return the sum of all elements that appear in all three given arrays,
    for axample, if 2 and 3 appear as elements in all three given arrays,
    we should return 5
  - if no common elements appear in all three, return 0

input: three arrays of integers
output: integer
data structure: array, integer 

algorithm:
  - initialize (result) to 0
  - determine the convergence of all three arrays and assign to (convergence)
  - iterate through convergence
    - count the occurences of each element in convergence in each of the three
      arrays and return the lowest number of occurrences
      push the element occurences number of times into result
  - return (result) summed

=end

# still not efficient enough
