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