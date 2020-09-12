# new_cashier_get_order.rb
# 6 kyu

=begin

Some new cashiers started to work at your restaurant.

They are good at taking orders, but they don't know how to capitalize words, 
or use a space bar!

All the orders they create look something like this:

"milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza"

The kitchen staff are threatening to quit, because of how difficult it is to
read the orders.

Their preference is to get the orders as a nice clean string with spaces and
capitals like so:

"Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"

The kitchen staff expect the items to be in the same order as they appear
in the menu.

The menu items are fairly simple, there is no overlap in the names
of the items:

1. Burger
2. Fries
3. Chicken
4. Pizza
5. Sandwich
6. Onionrings
7. Milkshake
8. Coke

=end

MENU = %w(Burger Fries Chicken Pizza Sandwich Onionrings Milkshake Coke)

def get_order(str)
  order = []
  MENU.each do |item|
    order << [item] * str.scan(item.downcase).size if str.include?(item.downcase)
  end
  order.join(' ')
end

p get_order("milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza") ==
          "Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke"
p get_order("pizzachickenfriesburgercokemilkshakefriessandwich") ==
          "Burger Fries Fries Chicken Pizza Sandwich Milkshake Coke"

=begin

problem:
  - take the given string and return a new string that puts the items in menu
    order and capitalizes them and inserts white space.

input: string
output: string
data structure: string, array

algorithm:
  - build an array of (MENU) in correct order
  - initialize variable (order) to []
  - iterate through (MENU)
    - if given str includes element (downcased)
        - count element
        - push (MENU) element into (order) count number of times
  - return order joined with spaces

=end
