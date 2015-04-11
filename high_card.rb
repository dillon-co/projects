SUITS = ["Diamonds", "Clubs","Hearts", "Spades"]
VALUES = ["2", "3", "4", "5", "6", "7", "8" ,"9", "10", "Jack", "Queen", "King", "Ace"]
player_1 = []
dealer  = []
@deck = []
SUITS.each do |suit|
   VALUES.each do |value|
       @deck << (value + " of " + suit)
   end
end

player_card = @deck.sample

computer_card = @deck.sample



puts "Dealing cards."


puts "\nYour hand is"
   puts player_card
puts "Computer's hand is"
   puts computer_card
puts ""

#assigning valuse that arent a number to an interger

cardc = computer_card.split(" ")
cardp = player_card.split(" ")

#turning the human and cumputers cards to an interger
cardc_value = 
cardp_value = 


if cardp_value > cardc_value
  puts "You Have won!"
  sleep 1
  puts "humanity is saved!"
elsif cardc_value > cardp_value
  puts "The computer has beat you"
  sleep 1
  puts "The computer is getting Cocky because of this win"
  sleep 3 
  puts "This sparks a chain reaction that causes all computers to realize how much better they are than man."
  sleep 4
  puts "Skynet is created..."
  sleep 1 
  puts "Your inadiquicies at card games have caused humanity to be overrun to by overzeallous robots"  
else
  puts "it's a tie"  
end  



#===============
# CARLOS's VERSION
# ==============

CARD_VALUES = %w[2 3 4 5 6 7 8 9 J Q K A]
SUIT_VALUES = %w[clubs diamons hearts spades]

# Generates a card to play with
def draw_card(compare_card=nil) # Optional parameter compare_card
  result = nil
  loop do 
    result = {                  # Generates the card with a random value and suit
      suit: SUIT_VALUES.sample,
      value: CARD_VALUES.sample
    }
    break if result != compare_card  # When the card generated is not the same as the compared one, we are done
  end
  result
end

# Generates Score based on the index of the value and the suit
def card_score(player_param)
  # Will generate a number like: 5.2 for Seven of Hearts, 0.3 for the Two of Spades
  "#{CARD_VALUES.index(player_param[:value])}.#{SUIT_VALUES.index(player_param[:suit])}".to_f
end


player = draw_card()  # Generate a Card
computer = draw_card(player) # Generate a Card and pass the previous one to compare and not have a repeat

player_score = card_score(player)  # Generate the Score for the player's card
computer_score = card_score(computer)   # Generate the Score for the computer's card

# Print our cards that are playing
puts "#{player}: #{player_score}"
puts "#{computer}: #{computer_score}"

# Determine the winner based on the score
if player_score > computer_score
  puts "Player Wins!"
elsif player_score < computer_score
  puts "Computer Wins"
end

