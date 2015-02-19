class Rules
	
  def initialize(hand_value, dhand_value)
    @hand_value = hand_value
    @dhand_value = dhand_value
  end

  def win
    if @hand_value.hand_value > @dhand_value.dhand_value
      puts "You win!"
    elsif @hand_value.hand_value < @dhand_value.dhand_value
      puts "You lose!"
    else
      puts "Tie!"
    end
  end

  def play_again?
	puts "Would you like to play again? (y)es or (n)o"
	answer = gets.chomp
	if answer == "y"
	  replay = Start.new
	elsif answer == "n"
	  puts "goodbye"
	  exit
	else
	  "Please answer (y)es or (n)o"
	  play_again?
	end
  end
end