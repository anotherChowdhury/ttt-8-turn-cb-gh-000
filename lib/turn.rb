def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if index < 0 || input > 8
    turn(board)
  end

  if valid_move?(board,index)
    turn(board)
  end

end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board,index)
  position = board[index]
  if position == " " || position == ""
    true
  else
    false
  end
end
