class Game
  #rules?
      #blackjack, hit, stand, bet, etc.?
end

class Player
  #has hand of cards
  #calculate value of cards
  #make choices depending on values
end

class Dealer
  #deals cards
  #has hand of cards
end

# class Deck
#   attr_reader :deck_v
# def  initialize(deck_v)
#   @deck_v = { OneHearts: 1, TwoHearts: 2, ThreeHearts: 3, FourHearts: 4, FiveHearts: 5, SixHearts: 6, SevenHearts: 7,
#              EightHearts: 8, NineHearts: 9, TenHearts: 10, AceHearts: 11, JHearts: 10, QHearts: 10, KHearts: 10,
#              OneDiamonds: 1, TwoDiamonds: 2, ThreeDiamonds: 3, FourDiamonds: 4, FiveDiamonds: 5, SixDiamonds: 6, SevenDiamonds: 7,
#              EightDiamonds: 8, NineDiamonds: 9, TenDiamonds: 10, ADiamonds: 11, JDiamonds: 10, QDiamonds: 10, KDiamonds: 10,
#              OneSpades: 1, TwoSpades: 2, ThreeSpades: 3, FourSpades: 4, FiveSpades: 5, SixSpades: 6, SevenSpades: 7,
#              EightSpades: 8, NineSpades: 9, TenSpades: 10, ASpades: 11, JSpades: 10, QSpades: 10, KSpades: 10,
#              OneClubs: 1, TwoClubs: 2, ThreeClubs: 3, FourClubs: 4, FiveClubs: 5, SixClubs: 6, SevenClubs: 7,
#              EightClubs: 8, NineClubs: 9, TenClubs: 10, AClubs: 11, JClubs: 10, QClubs: 10, KClubs: 10, }
#   def card_value(value)
#
# end
# end
class Hand
  attr_accessor :hand
  def initialize
    card = Card.new([], [])
    puts "#{card.rank[0]}#{card.suit[0]}"
    puts "#{card.rank[0]}#{card.suit[0]}"
    def hand_value
      hand_value = "#{card.rank[0]}#{card.suit[0]}" + "#{card.rank[0]}#{card.suit[0]}"
      puts hand_value.each_key { |value| puts "#{key} is #{value}" }
end
end
class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "A"].shuffle
    @suit = ["Hearts", "Diamonds", "Clubs", "Spades"].shuffle
end
 def deck_value
# @deck_v = { OneHearts: 1, TwoHearts: 2, ThreeHearts: 3, FourHearts: 4, FiveHearts: 5, SixHearts: 6, SevenHearts: 7,
#             EightHearts: 8, NineHearts: 9, TenHearts: 10, AceHearts: 11, JHearts: 10, QHearts: 10, KHearts: 10,
#             OneDiamonds: 1, TwoDiamonds: 2, ThreeDiamonds: 3, FourDiamonds: 4, FiveDiamonds: 5, SixDiamonds: 6, SevenDiamonds: 7,
#             EightDiamonds: 8, NineDiamonds: 9, TenDiamonds: 10, ADiamonds: 11, JDiamonds: 10, QDiamonds: 10, KDiamonds: 10,
#             OneSpades: 1, TwoSpades: 2, ThreeSpades: 3, FourSpades: 4, FiveSpades: 5, SixSpades: 6, SevenSpades: 7,
#             EightSpades: 8, NineSpades: 9, TenSpades: 10, ASpades: 11, JSpades: 10, QSpades: 10, KSpades: 10,
#             OneClubs: 1, TwoClubs: 2, ThreeClubs: 3, FourClubs: 4, FiveClubs: 5, SixClubs: 6, SevenClubs: 7,
#             EightClubs: 8, NineClubs: 9, TenClubs: 10, AClubs: 11, JClubs: 10, QClubs: 10, KClubs: 10, }
# Figure out how to attach keys from hand to deck/values?
  end
end
hand = Hand.new

hand
end
