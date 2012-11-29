class TicTacToe
	attr_accessor :player, :player_symbol, :computer_symbol, :board, :current_player, :closed_spots

	SYMBOLS = [:X, :O]

	def initialize(first_player = nil, mark = nil)
		@player = "Renee"
		if mark == :O
			@player_symbol, @computer_symbol = :O, :X
		elsif mark == :X
			@player_symbol, @computer_symbol = :X, :O
		else
			symbols = SYMBOLS.shuffle
			@player_symbol, @computer_symbol = symbols.first, symbols.last
		end

		@closed_spots = []
		@board = { A1: " ", A2: " ", A3: " ",
							 B1: " ", B2: " ", B3: " ",
							 C1: " ", C2: " ", C3: " "}

		assign_current_player(first_player)
	end

	def assign_current_player(flag = nil)
		@current_player = case flag
											when :next
												@current_player == "Computer" ? @player : "Computer"
											when :player
		 										@player
		 									when :computer
												"Computer"
											else
												[@player, "Computer"].shuffle.first
											end
	end

	def open_spots
		%w(A1 A2 A3 B1 B2 B3 C1 C2 C3 ) - @closed_spots
	end

	def player_move
		move 							 = gets.chomp
		board[move.to_sym] = @player_symbol
		@closed_spots 		 << move

		assign_current_player :next
	end

	def computer_move
		move 							 = open_spots.shuffle.first
		board[move.to_sym] = @computer_symbol
		@closed_spots 		 << move

		assign_current_player :next
	end

	def current_state
		puts "  | 1 | 2 | 3 "
		puts "A | #{board[:A1]} | #{board[:A2]} | #{board[:A3]} "
		puts "B | #{board[:B1]} | #{board[:B2]} | #{board[:B3]} "
		puts "C | #{board[:C1]} | #{board[:C2]} | #{board[:C3]} "

		puts "Open spots: #{open_spots.length}"
	end

	def indicate_player_turn
	end

	def get_player_move
	end

	def spots_open?
	end

	def player_won?
		win_condition_met @player_symbol
	end

	def computer_won?
		win_condition_met @computer_symbol		
	end

	def win_condition_met(mark)
		true if (board[:A1] == mark && board[:A2] == mark && board[:A3] == mark) ||
			 			(board[:B1] == mark && board[:B2] == mark && board[:B3] == mark) ||
			 			(board[:C1] == mark && board[:C2] == mark && board[:C3] == mark) ||
			 			(board[:A1] == mark && board[:B1] == mark && board[:C1] == mark) ||
			 			(board[:A2] == mark && board[:B2] == mark && board[:C2] == mark) ||
			 			(board[:A3] == mark && board[:B3] == mark && board[:C3] == mark) ||
			 			(board[:A1] == mark && board[:B2] == mark && board[:C3] == mark) ||
						(board[:C1] == mark && board[:B2] == mark && board[:A3] == mark)
	end

	def draw?
		true if open_spots.length == 0 && !(computer_won? || player_won?)
	end

	def over?
		true if draw? or computer_won? or player_won?
	end

	def determine_winner
		#This method is meaningless... I wrote a different program than was implied by the structure of the game and tests.
	end

	def welcome_player
		"Welcome #{@player}"
	end
end