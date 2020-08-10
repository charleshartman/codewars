# more_sort.rb

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
=begin
new = arr.map do |subs|
  subs.sort.reverse
end

p new
=end
new = arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end
p new