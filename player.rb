class Player
  attr_accessor :first_card, :second_card, :p_hand, :hand_value
  def initialize (deck_s)
    @deck = deck_s
    @hand_value = []
    @value = []
  end

  def hand1
    @p_hand = []
    2.times do
      @p_hand << @deck.pop
    end
  end

  def hand_total
    @first_card = @p_hand[0]
    @second_card = @p_hand[1]
    puts "Your first card is #{@p_hand[0][0]} of #{@p_hand[0][1]}"
    puts "Your second card is #{@p_hand[1][0]} of #{@p_hand[1][1]}"
    @p_hand.each do |token|
      token.each do |x|
      if x.is_a? Numeric
        @value << x
        @hand_value = @value.reduce(:+)
      end
      end
    end
    puts "Your hand has a total of #{@hand_value}"
  end

  def hit_or_stay
    puts "Would you like to (h)it or (s)tay?"
    answer = gets.chomp
    until answer == "s".downcase do
      if answer == "h".downcase
        @hand_value += @deck.pop
          puts "You got a(n) #{@first_card[0]} of #{@first_card[1]}"
          puts "You now have #{@hand_value}"
      # elsif answer == "s".downcase
      #    puts "You're staying with #{@hand_value}"
      end
    end
  end
end