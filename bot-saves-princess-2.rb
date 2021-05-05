def next_move(board_size, bot_x, bot_y, board)
  if (@princess_coords[0] < bot_x)    
    'UP'
  elsif (@princess_coords[0] > bot_x)
    'DOWN'
  elsif (@princess_coords[1] < bot_y)
    'LEFT'
  elsif (@princess_coords[1] > bot_y)
    'RIGHT'
  end
end
  
board_size = gets.to_i
bot_x, bot_y = gets.strip.split.map {|coord| coord.to_i}
princess_coords = nil
board = Array.new(board_size)
(0...board_size).each do |row|
  line = gets
  if line.include? 'p'
    @princess_coords = [row, line.index('p')]
  end
  board[row] = line
end

puts next_move(board_size, bot_x, bot_y, board)