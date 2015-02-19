class Deck
  attr_accessor :deck_s

  def initialize
    build
  end
  def build
    deck = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11]
    suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
    @deck_s = (deck.product(suits)).shuffle
  end
end








# class Game# Need to get @hand_value in to here from Player class, Hand method
# def initialize
#   @player = Player.new
#   @dealer = Dealer.new
# end
# end