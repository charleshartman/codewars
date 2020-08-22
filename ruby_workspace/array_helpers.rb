# array_helpers.rb

class Array
  def square
    map { |n| n ** 2 }
  end

  def cube
    map { |n| n ** 3 }
  end

  def sum
    inject(:+)
  end

  def average
    sum / length
  end

  def even
    select(&:even?)
  end

  def odd
    select(&:odd?)
  end

end

array = [1, 2, 3, 4, 5]

p array.square() == [1, 4, 9, 16, 25]
p array == [1, 2, 3, 4, 5]
p array.cube() == [1, 8, 27, 64, 125]
p array.sum() == 15
p array.average() == 3
p array.even() == [2, 4]
p array.odd() == [1, 3, 5]
