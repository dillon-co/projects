class GameOfLife
  def initialize
    @board_width = 25
    @board_height = 25
    @alive = '8'
    @dead = ' '
    @board = Array.new(@board_width) { Array.new(@board_height) { rand(0..3) == 1 ? @alive : @dead} } 
  end
  
 def show_board
  system 'clear' or system 'cls'
  @board.each {|col| puts col.map{ |cell| cell}.join(' ') }
  puts ""
end


# def count_neighbors(y, x)
#   @count = 0
#   (-1..1)each do |col|
#     (-1..1)each do |row|
#       @count += 1 if @board[y + col][x + row] == @alive
#     end
#   end       
# end

end
game = GameOfLife.new

game.show_board