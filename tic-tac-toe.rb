#====================================
#====================================
#====================================
# LEAVE DAMN COMMENTS !!!!!
#====================================
#====================================
#====================================

@board = [['-','-','-'],['-','-','-'],['-','-','-']]

# Top Bottom Left Right Center Middle
# botmom
def board
  # show board
  @board.each do |row| 
    puts row.map { |col| col}.join(' ')
  end

  # Determine the winner
end



def choice(choice, option)
  case choice
  when 1  
    @board[0][0] = option 
  when 2   
   @board[0][1] = option
  when 3
    @board[0][2] = option
  when 4 
    @board[1][0] = option
  when 5  
    @board[1][1] = option
  when 6 
    @board[1][2] = option
  when 7
    @board[2][0] = option
  when 8 
    @board[2][1] = option
  when 9  
    @board[2][2] = option
  end 
end    

@options = [1, 2, 3, 4, 5, 6, 7, 8, 9]




def player_choice
  puts "Choose a square"
  players_choice = gets.chomp
  player_choice.split(' ')
  case players_choice

  # when players_choice.include? "top" 
  #   players_choice.remove players_choice[0]

    player = 1
  when "top middle"
    player = 2
  when "top right"
    player = 3
  when "middle left"
    player = 4
  when "middle"
    player = 5
  when "middle right"
    player = 6  
  when "bottom left"
    player = 7
  when "bottom middle"
    player = 8
  when "bottom right"
    player = 9
  else
    print "That's not an option." 
    board
    player_choice
  end        
  @options.delete(player)
  player
end 
#=================
# PLAYER 2
#=================
def player2_choice
  puts "Player 2\nChoose a square"
  player2s_choice = gets.chomp.downcase
  case player2s_choice
  when "top left"
    player2 = 1
  when "top middle"
    player2 = 2
  when "top right"
    player2 = 3
  when "middle left"
    player2 = 4
  when "middle"
    player2 = 5
  when "middle right"
    player2 = 6  
  when "bottom left"
    player2 = 7
  when "bottom middle"
    player2 = 8
  when "bottom right"
    player2 = 9
  else
    print "That's not an option." 
    board
    player2_choice
  end        
  @options.delete(player2)
  player2
end 





def computer_choice
  puts "The computer's square is..."
  sleep 1
  computer = @options.sample
  case computer 
  when 1
    puts "top left"
    sleep 1
  when 2
    puts "top middle"
    sleep 1
  when 3
    puts "top right"
    sleep 1
  when 4
    puts "middle left"
    sleep 1
  when 5
    puts "middle"
    sleep 1
  when 6
    puts "middle right"
    sleep 1
  when 7
    puts "bottom left"
    sleep 1
  when 8
    puts "bottom middle"
    sleep 1
  when 9
    puts "bottom right"
    sleep 1
  end      
  @options.delete(computer)
  return computer
end  


 #   Until there are no more options, loop through and put an x where the player's choice is supposed to go
 # do the same 
puts "2 player?(yes or no)"
answer = gets.chomp


  def determine_winner(who, x)
    (0..2).each { |y| (0..2).each {|x| print @board[y][x] }puts""}

  def check_vertical
    
    (0..2).each { |y| (0..2).each {|x| @board[y][x] }.map { |vals| vals[y] == 'x' }

  end

    if @board[0][0] == x.to_s && @board[0][1] == x.to_s && @board[0][2] == x.to_s ||
     @board[1][0] == x.to_s && @board[1][1] == x.to_s && @board[1][2] == x.to_s ||
     @board[2][0] == x.to_s && @board[2][1] == x.to_s && @board[2][2] == x.to_s ||
     @board[0][0] == x.to_s && @board[1][0] == x.to_s && @board[2][0] == x.to_s ||
     @board[0][1] == x.to_s && @board[1][1] == x.to_s && @board[2][1] == x.to_s || 
     @board[0][2] == x.to_s && @board[1][2] == x.to_s && @board[2][2] == x.to_s ||
     @board[0][0] == x.to_s && @board[1][1] == x.to_s && @board[2][2] == x.to_s || 
     @board[0][2] == x.to_s && @board[1][1] == x.to_s && @board[2][0] == x.to_s
      true
      puts "#{who.upcase} HAS WON!!"
      break!
    end
  end     



#+================
# PLAYER VS PLAYER
#+================


if answer == 'yes'
  
  until @options == nil  
    board
    choice(player_choice, 'x')
    determine_winner()
    board
    if @board[0][0] == 'x' && @board[0][1] == 'x' && @board[0][2] == 'x' ||
     @board[1][0] == 'x' && @board[1][1] == 'x' && @board[1][2] == 'x' ||
     @board[2][0] == 'x' && @board[2][1] == 'x' && @board[2][2] == 'x' ||
     @board[0][0] == 'x' && @board[1][0] == 'x' && @board[2][0] == 'x' ||
     @board[0][1] == 'x' && @board[1][1] == 'x' && @board[2][1] == 'x' || 
     @board[0][2] == 'x' && @board[1][2] == 'x' && @board[2][2] == 'x' ||
     @board[0][0] == 'x' && @board[1][1] == 'x' && @board[2][2] == 'x' || 
     @board[0][2] == 'x' && @board[1][1] == 'x' && @board[2][0] == 'x'
      puts "PLAYER 1 WINS!"
      break
    end 
     
    choice(player2_choice, 'o')

     if @board[0][0] == 'o' && @board[0][1] == 'o' && @board[0][2] == 'o' ||
     @board[1][0] == 'o' && @board[1][1] == 'o' && @board[1][2] == 'o' ||
     @board[2][0] == 'o' && @board[2][1] == 'o' && @board[2][2] == 'o' ||
     @board[0][0] == 'o' && @board[1][0] == 'o' && @board[2][0] == 'o' ||
     @board[0][1] == 'o' && @board[1][1] == 'o' && @board[2][1] == 'o' || 
     @board[0][2] == 'o' && @board[1][2] == 'o' && @board[2][2] == 'o' ||
     @board[0][0] == 'o' && @board[1][1] == 'o' && @board[2][2] == 'o' || 
     @board[0][2] == 'o' && @board[1][1] == 'o' && @board[2][0] == 'o'  
      board
      puts "PLAYER 2 WINS!!."
      break
     
    elsif @board[0][0] != '-' && @board[0][1] != '-' && @board[0][2] != '-' && 
     @board[1][0] != '-' && @board[1][1] != '-' && @board[1][2] != '-' &&
     @board[2][0] != '-' && @board[2][1] != '-' && @board[2][2] != '-'
      board
      puts "ITS A DRAW!"
      sleep 0.5
      puts "You couldn't even beat each other... lusers"
      break
    end  
  end









 # create board






# determine_winner('The Player', 'x')

# determine_winner('The Computer', 'o')


#====================================
#====================================
#====================================
# LEAVE DAMN COMMENTS FOR YOURSELF!!!!!
#====================================
#====================================
#====================================
