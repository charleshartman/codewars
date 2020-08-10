# twenty_one.rb - intial lesson implementation of '21' aka Blackjack

SUITS = ['H', 'D', 'S', 'C']
CARDS = ['Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10',
         'Jack', 'Queen', 'King']
SYMBOLS = { "S" => "\u2660", "H" => "\u2665", "D" => "\u2666", "C" => "\u2663" }


def deck_builder(suits, cards)
  fresh_deck = []
  suits.each do |suit|
    cards.each do |card|
      fresh_deck << [suit, card]
    end
  end

  fresh_deck.shuffle
end

def display_current_hand(hand)
  hand.each do |card|
    print "[#{SYMBOLS[card[0]]} #{card[1]} #{SYMBOLS[card[0]]}]  "
  end
end



deck = deck_builder(SUITS, CARDS)

hand = []
5.times do 
  hand << deck.shift
end
p hand
display_current_hand(hand)

