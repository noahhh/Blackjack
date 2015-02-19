class Player
  attr_accessor :first_card, :second_card, :p_hand, :hand_value
  def initialize (deck_s)
    @deck = deck_s
    @hand_value = []
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
    puts "Your first card is #{@first_card[0]} of #{@first_card[1]}"
    puts "Your second card is #{@second_card[0]} of #{@second_card[1]}"
    @p_hand.each do |token|
      if token.is_a? Numeric
        @hand_value << token
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