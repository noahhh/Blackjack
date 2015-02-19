class Dealer
  attr_accessor :dfirst_card, :dsecond_card, :d_hand, :dhand_value
  def initialize (deck_s)
    @deck = deck_s
    @dhand_value = []
    @dvalue = []
  end

  def hand2
    @d_hand = []
    2.times do
      @d_hand << @deck.pop
    end
  end

  def dhand_total
    @dfirst_card = @d_hand[0]
    @dsecond_card = @d_hand[1]
    puts "Dealers first card is #{@dfirst_card[0]} of #{@dfirst_card[1]}"
    @dhand_value = @dfirst_card[0] + @dsecond_card[0]
  end

  def hand_total
    @first_card = @d_hand[0]
    @second_card = @d_hand[1]
    puts "Dealers first card is #{@d_hand[0][0]} of #{@d_hand[0][1]}"
    @d_hand.each do |token|
      token.each do |x|
      if x.is_a? Numeric
        @dvalue << x
        @dhand_value = @dvalue.reduce(:+)
      end
      end
    end
  end

  def dhit_dstay
    until @dhand_value >= 17 do
      if @dhand_value >= 17
        puts "Dealer is staying with #{@dhand_value}"
      elsif @dhand_value <= 16
        puts "Dealer will take a hit."
        @d_hand << @deck.pop
        @dhand_value += @d_hand[-1][0]
        puts "Dealer got a(n) #{@d_hand[-1][0]} of #{@d_hand[-1][-1]}"
        puts "Dealer now has #{@dhand_value}"
       else
        puts "Dealer busted, you win!"
        exit
      end
    end
  end
end