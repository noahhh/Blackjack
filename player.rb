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

  def hand_total
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
        @p_hand += @deck.pop
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