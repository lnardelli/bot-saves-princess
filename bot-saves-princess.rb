def next_move (princess_coords)
  if princess_coords[0] < @bot_coords[0]
    @bot_coords[0] -= 1
    'UP'
  elsif princess_coords[0] > @bot_coords[0]
    @bot_coords[0] += 1
    'DOWN'
  elsif princess_coords[1] < @bot_coords[1]
    @bot_coords[1] -= 1
    'LEFT'
  elsif princess_coords[1] > @bot_coords[1]
    @bot_coords[1] += 1
    'RIGHT'
  end
end

board_size = gets.to_i
@bot_coords = [(board_size-1)/2, (board_size-1)/2]
princess_coords = nil
(0...board_size).each do |row|
  line = gets
  if line.include? 'p'
    princess_coords = [row, line.index('p')]
  end
end

loop do
  puts next_move(princess_coords)
  break if @bot_coords[0] == princess_coords[0] && @bot_coords[1] == princess_coords[1]
end
