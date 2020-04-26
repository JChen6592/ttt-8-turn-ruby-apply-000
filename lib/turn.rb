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
  index = input_to_index(board)
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
  if move > board.length || 1 > move 
    return false 
  elsif position_taken?(board, move)
    return false 
  else 
    return true 
  end
end
    
def move(board, index, player_char = "X")
  board[index] = player_char 
end 