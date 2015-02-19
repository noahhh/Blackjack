class Deck
  attr_accessor :deck_s

  def build
    deck = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11]
    suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
    @deck_s = (deck.product(suits)).shuffle
  end
end