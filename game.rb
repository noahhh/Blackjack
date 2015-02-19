require './blackjack3.rb'
require './player.rb'
require './dealer.rb'
require './rules.rb'
require 'pry'

class Start
  def initialize
    deck = Deck.new.build
    hand = Player.new(deck)
    dhand = Dealer.new(deck)
    rules = Rules.new(hand, dhand)
    hand.hand1
    hand.hand_total
    dhand.hand2
    dhand.dhand_total
    hand.hit_or_stay
    dhand.dhit_dstay
    rules.win
    rules.play_again?
  end
end


start_game = Start.new
start_game