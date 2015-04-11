@board_width = 5
@board = Array.new(@board_width) { |t| (“a”..”z”).to_a[t] }
# Don’t worry about that ^^ Just makes an array of letters...
20.times do |t|
puts @board[ (t) % @board_width]
end

@board_width = 10
@board_height = 