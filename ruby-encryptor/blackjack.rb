SUITS = ["Diamonds", "Clubs", "Spades", "Hearts"]
VALUES = ["1", "2", "3", "4", "5", "6","7","8","9", "10", "Jack", "Queen", "King"]
player_1 = []
player_2 = []
dealer  = []

#+============+
#Remember (rand_pair!) !!
#+============+
@deck = []
SUITS.each do |suit|
   VALUES.each do |value|
       @deck << (value + " of " + suit)
   end
end

def first_deal(player)
      2.times do
        card = @deck.sample
        @deck.delete(card)
          player << card
      end
end

      first_deal(player_1)
   first_deal(player_2)
   first_deal(dealer)
puts "Dealing cards."
sleep 1
print "."
sleep 1
print "."
sleep 1 
print "."
sleep 1

puts "First player's hand is"
      puts player_1
puts "Second player's hand is"
   puts player_2
puts "Dealers hand is"
   puts dealer
puts ""
      puts @deck.length