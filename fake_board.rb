@board = [['-','-','-'],['-','-','-'],['-','-','-']]

# Top Bottom Left Right Center Middle
# botmom
def show_board
  @board.each do |row| 
    puts row.map { |col| col}.join(' ')
  end
end

def determine_winner

  @board.each do |row| if (row[0] != '-' && (row[0] == row[1] && row[0] == row[2]))
  winner = true
end

def get_input(player)
  puts "Choose a square"
  choice = gets.chomp.
  case choice
  when .include?"top"
    if choice.include("right")
      @board[0][2] = '#{player}'
    elsif choice.include("left")
      board[0][0] = '#{player}'
    elsif choice.include("middle")
      board[0][1]
    else
      p "Not an option"
      next
    end  
   when .include?("middle") 
    f choice.include("right")
      @board[1][2] = '#{player}'
    elsif choice.include("left")
      board[1][0] = '#{player}'
    elsif choice.include("middle")
      board[1][1]
    else
      p "That's not an option."
      next
    end  
    elsif .include("bottom")
      f choice.include("right")
      @board[2][2] = '#{player}'
    elsif choice.include("left")
      board[2][0] = '#{player}'
    elsif choice.include("middle")
      board[2][1]
    else
      p "Not an option"
      next
    end
   show_board   
end    

show_board


