class TicTacToe
	attr_accessor :player, :player_symbol, :computer_symbol, :board, :current_player

	SYMBOLS = [:X, :O]

	def initialize(first_player = nil, mark = nil)
		if mark == :O
			@player_symbol, @computer_symbol = :O, :X
		else
			symbols = SYMBOLS.shuffle
			@player_symbol, @computer_symbol = symbols.first, symbols.last
		end

		assign_current_player(first_player)
	end

	def assign_current_player(flag = nil)
		@current_player = case flag
											when :player
		 										"Renee"
		 									when :computer
												"Computer"
											else
												["Renee", "Computer"].shuffle.first
											end
	end

	def open_spots
		%w(A1 A2 A3 B1 B2 B3 C1 C2 C3 )
	end

	def computer_move
		open_spots.shuffle.first
	end

	def current_state
		["X"]
	end

	def indicate_player_turn
	end

	def get_player_move
	end

	def spots_open?
	end

	def draw?
		true
	end

	def over?
		true
	end

	def determine_winner
	end

	def welcome_player
		"Welcome Renee"
	end
end