@board = [
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
          [' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
        ]

def show_board(board)
  board.each do |row| 
    puts row.map { |col| col}.join(' ')
  end
end

@player = @board.each_with_index do |row, row_index|
     row.each_with_index do |col, col_index|
       @row = row_index
       @col = col_index
end


def player(y, x) 
  @board[y][x] = '0'
  show_board(@board)
  while true 
  where_to = ['w','s','d','a'] 
  motion = gets.chomp
  sleep 0.1
  case motion
  when 'w'
    system 'clear' or system "cls"
    y != 10 ? y = y - 1 : y = y + 9
    @board[y][x] = '0'
    # @board[y + 1][x] = ' '
    show_board(@board)
  when 'd'
     system 'clear' or system "cls"
   x != 10 ? x = x + 1 : x = x - 9   
    @board[y][x] = '0'
     # @board[y][x - 1] = ' '
    show_board(@board)
  when 'a'
     system 'clear' or system "cls"
    x != 10 ? x = x - 1 : x = x + 9 
    @board[y][x] = '0'
     # @board[y][x + 1] = ' '
    show_board(@board)
  when 's'
     system 'clear' or system "cls"
    if y != 10 ? y = y + 1 : y = y - 9  
    @board[y][x] = '0'
     # @board[y - 1][x] = ' '
    show_board(@board)
  else
     puts "That's not an option."
  end
end
end  
end
end
show_board(@board)    
player(4, 3)         
