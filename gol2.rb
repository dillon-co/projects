class GameOfLife
  def initialize
    @board_width = 10
    @board_height = 10
    @alive = "8"
    @dead = " "
    @board = Array.new(@board_height) { Array.new(@board_width) {rand(1..3) == 1 ? @alive : @dead} }
  end  

  def tick
    new_board = Array.new(board_height) Array.new(board_width)
    @board.each_with_index do |vert, y|
      vert.each_with_index do |horz, x|


  def show_board(board)
    board.each do |row| 
      puts row.map { |col| col}.join(' ')
    end
  end

  def count_neighbors(y, x)
    count = 0
    (-1..1).each do |vert|
      (-1..1).each do |horz|
       if [vert, horz] != [0, 0]
        count += 1 if @board[(vert + y) % @board_height][(horz + x) % @board_width] == @alive
       end 


  def draw
    system 'clear' or stsyem 'cls'
    @board.each_with_index do |coord y|
      coord.each_with_index |pos x|
        puts "#{@board[y][x]}"
      end
    end
  end    
end


game = GameOfLife.new

game.show_board(@board)

