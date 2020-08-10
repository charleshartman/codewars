# LS blackjack method for hand value

def total_hand(hand)
  values = hand.map { |card| card[1] }

  total = 0
  values.each do |value|
    if value == "Ace"
      total += 11
    elsif value.to_i == 0
      total += 10
    else
      total += value.to_i
    end
  end

  # Adjust for Aces
  values.select { |value| value == "Ace" }.count.times do
    total -= 10 if total > 21
  end
  total
end