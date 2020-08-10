produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

empty_basket = {}

def select_fruit(hash)
  selections = hash.select { |key, value| value == 'Fruit' }
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
p select_fruit(empty_basket)