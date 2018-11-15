# code your #valid_move? method here
def valid_move?(board,index)
  index.to_i.between?(1,9) and not position_taken?(board, index.to_i - 1)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)

if [" ", "", nil].include?(board[index])
    return false
  elsif ["X", "O", ""].include?(board[index])
    return true
  raise "#{board[index]} is not a valid move"
end
end
