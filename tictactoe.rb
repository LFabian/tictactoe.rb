
#Creates a Tic Tac Toe board and simulates a game  played 
def tic_tac_toe(board)
  count_x = 0 
  count_o = 0 
  gato_board = board 
  players = [ "X", "O"]
  for i in 0..2
    for j in 0..2 
      gato_board[i][j] = players.shuffle.sample
      if gato_board[i][j] == "X"
        count_x += 1
      elsif gato_board[i][j] == "O"
        count_o += 1 
      end    
      
      if count_x == 5 
        players.delete("X")
      elsif count_o == 5 
        players.delete("O")
      end 
    end 
  end 
   gato_board.each do |x|
   puts "#{x}"
   end 
end 

board = Array.new(3) { Array.new (3) }
tic_tac_toe(board)


