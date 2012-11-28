class TicTacToe
	attr_accessor :player, :player_symbol, :computer_symbol, :board, :current_player

	SYMBOLS = [:X, :O]

	def initialize(first_player = nil)
		symbols = SYMBOLS.shuffle
		@player_symbol, @computer_symbol = symbols.first, symbols.last

		assign_current_player(first_player)
	end

	def assign_current_player(flag = nil)
		#Don't make this a clusterfuck of logic
		@current_player = "Renee"
#		if @player.nil?
#			if flag == :player
#				@current_player = @player
#			elsif flag == :computer
#				@current_player = "Computer"
#			elsif flag == :next
#				@current_player = @current_player == @player ? "Computer" : @player
#			else
#				@current_player = [@player, "Computer"].shuffle.first
#			end
#		else
#
#		end
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