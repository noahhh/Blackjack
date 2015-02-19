class Win_lose
  def initialize(hand_value, dhand_value)
    @hand_value = hand_value
    @dhand_value = dhand_value
  end

  def win
    # binding.pry
    if @hand_value.hand_value > @dhand_value.dhand_value
      puts "You win!"
    elsif @hand_value.hand_value < @dhand_value.dhand_value
      puts "You lose!"
    else
      puts "Tie!"
    end
  end
end

# class Start
#   def initialize
#     deck = Deck.new.build
#     hand = Player.new(deck)
#     dhand = Dealer.new(deck)
#     result = Win_lose.new(hand, dhand)
#     hand.hand1
#     hand.hand_total
#     dhand.hand2
#     dhand.dhand_total
#     hand.hit_or_stay
#     dhand.dhit_dstay
#     result.win
#   end
# end

# Start Game = Start.new
# Start Game