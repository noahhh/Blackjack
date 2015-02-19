require './blackjack3.rb'
require './player.rb'
require './dealer.rb'
require './game.rb'
require 'pry'


class Start
  def initialize
    deck = Deck.new.build
    hand = Player.new(deck)
    dhand = Dealer.new(deck)
    result = Win_lose.new(hand, dhand)
    hand.hand1
    hand.hand_total
    dhand.hand2
    dhand.dhand_total
    hand.hit_or_stay
    dhand.dhit_dstay
    result.win
  end
end

Start Game = Start.new
Start Game