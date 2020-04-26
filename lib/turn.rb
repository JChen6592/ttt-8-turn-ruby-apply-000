board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = board
  index = input_to_index(user_input)
  if valid_move?(board, index)
    turn(board)
    display_board(board)
  end 
end

def input_to_index(move)
  index = move.to_i - 1
  return index 
end 

def position_taken?(board, move)
  if board[move] == " " || board[move] == "" || board[move] == nil 
    return false 
  else 
    return true 
  end
end

def valid_move?(board, move)
  if move => 0 && move < board.length 
    return true 
  elsif position_taken?(board, move)
    return false 
  else 
    return false 
  end
end
    
def move(board, index, player_char = "X")
  board[index] = player_char 
end 