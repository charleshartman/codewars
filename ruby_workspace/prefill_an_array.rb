# prefill_an_array.rb

def prefill(num, value='undefined')
  result = []
  result << value * num
  # ...
end


p prefill(3,1) == [1,1,1]
p prefill(2,'abc') == ['abc','abc']
p prefill('1',1) == [1]
p prefill(3, prefill(2,'2d')) == [['2d','2d'],['2d','2d'],['2d','2d']]
