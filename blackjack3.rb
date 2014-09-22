class Deck
  attr_accessor :deck_s

  def initialize
    build
  end
  def build
    deck = [2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10, 11]
    suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
    @deck_s = (deck.product(suits)).shuffle # product makes every possible combination
  end
end

class Player
  attr_accessor :first_card, :second_card, :p_hand, :hand_value
  def initialize (deck_s)
    @deck = deck_s
  end

  def hand1
    @p_hand = []
    2.times do
      @p_hand << @deck.pop
    end

  def hand_total # calculates hand total and lets user know
    @first_card = @p_hand[0]
    @second_card = @p_hand[1]
    puts "Your first card is #{@first_card[0]} of #{@first_card[1]}"
    puts "Your second card is #{@second_card[0]} of #{@second_card[1]}"
    @hand_value = @first_card[0] + @second_card[0]
    puts "Your hand has a total of #{@hand_value}"
  end

  def hit_or_stay
      puts "Would you like to (h)it or (s)tay?"
      answer = gets.chomp
  if answer == "h".downcase
        @hand_value += @first_card[0]
            puts "You got a(n) #{@first_card[0]} of #{@first_card[1]}"
            puts "You now have #{@hand_value}"
  elsif answer == "s".downcase
         puts "You're staying with #{@hand_value}"
            # exit
  end
  until answer == "s".downcase do
    hit_or_stay
  break
      end
    end
  end
end

class Dealer
  attr_accessor :dfirst_card, :dsecond_card, :d_hand, :dhand_value
  def initialize (deck_s)
    @deck = deck_s
  end

  def hand2 # creates dealer hand
    @d_hand = []
    2.times do
      @d_hand << @deck.pop
    end

  def dhand_total # evaluate total
    @dfirst_card = @d_hand[0]
    @dsecond_card = @d_hand[1]
    puts "Dealers first card is #{@dfirst_card[0]} of #{@dfirst_card[1]}"
    @dhand_value = @dfirst_card[0] + @dsecond_card[0]
    # puts "Dealer has a total of #{@dhand_value}" # test if dealer value works
  end

  def dhit_dstay
    if @dhand_value >= 17
      puts "Dealer is staying with #{@dhand_value}"
    elsif @dhand_value <= 16
      puts "Dealer will take a hit."
      @dhand_value += @dfirst_card[0]
          puts "Dealer got a(n) #{@dfirst_card[0]} of #{@dfirst_card[1]}"
          puts "Dealer now has #{@dhand_value}"
    until @dhand_value >= 17 do
      dhit_dstay
    end
    end
  end
end
end

class Win_lose
 def win
   if @player_value > @dhand_value
     puts "You win!"
   elsif @player_value < @dhand_value
     puts "You lose!"
   else
     puts "Tie!"
   end
 end
 end


# class Game# Need to get @hand_value in to here from Player class, Hand method
# def initialize
#   @player = Player.new
#   @dealer = Dealer.new
# end
# end

class Start
  def initialize
deck = Deck.new.build
hand = Player.new(deck)
dhand = Dealer.new(deck)
result = Win_lose.new
# game = Game.new
hand.hand1
hand.hand_total
dhand.hand2
dhand.dhand_total
hand.hit_or_stay
dhand.dhit_dstay
result.win
# dhand.hand2
end
end

Start Game = Start.new
Start Game
