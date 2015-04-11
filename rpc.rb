@counter = 0
@p_winner = 0
@c_winner = 0

def game
  turn = ["rock", "paper", "scissors"]
  comp = turn[rand(turn.size)]

  puts "rock, paper, or scissors?"
  player = gets.chomp.to_s

  puts "\n======\nYou played #{player}, and the computer played #{comp}\n"
  
  tie = "Its a tie! go again!"
  
  if player == comp
    puts tie
    game
  elsif player == "rock"
    if comp == "paper"
      puts "Paper beats rock. You Loose!" 
      @c_winner += 1
      @counter += 1
    elsif comp == "scissors"
      puts "You Have smashed the computer!"
      @p_winner += 1
      @counter += 1
    else
      puts "That makes no sense" 
    end  
  elsif player == "paper" 
    if comp == "rock"
      puts "Paper beats rock. You win!" 
      @p_winner += 1
      @counter += 1
    elsif comp == "scissors"
      puts "The Computer has cut your face off!"
      @c_winner += 1
      @counter += 1
    else
      puts "That makes no sense" 
    end    
  elsif player == "scissors" 
    if comp == "rock"
      puts "Your face has been smashed in!"
      @c_winner += 1
      @counter += 1 
    elsif comp == "paper"
      puts "You shred the paper to a million pices like a samuri in the night."
      @p_winner += 1
      @counter += 1
    else
      puts "That makes no sense."
      game
    end   
   else 
    puts "That is not an option you fool!" 
    game              
  end

  while @c_winner < 3 || @p_winner < 3
    puts "================\n\nThe Count: #{@counter}\n\nPlayer:#{@p_winner}\n\nComputer:#{@c_winner}\n\n================="
    game

  if @c_winner >= 3
    puts "Best of 5. The Computer Wins!"
  elsif @p_winner >= 3
      puts "Best of 5. You win!" 
  else 
      puts "I don't know what that means!"      
  end
  end
end


game






