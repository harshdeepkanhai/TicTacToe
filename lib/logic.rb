class Player
    attr_reader :name
    attr_reader :token
    def initialize(name, token)
        @name = name
        @token = token
    end

end

class Grid
    @board = %w[1 2 3 4 5 6 7 8 9]
    def board
        puts "| #{@board[0]} | #{@board[1]} | #{@board[2]} |".colorize(:light_blue)
        puts '--------------'.colorize(:light_blue)
        puts "| #{@board[3]} | #{@board[4]} | #{@board[5]} |".colorize(:light_blue)
        puts '--------------'.colorize(:light_blue)
        puts "| #{@board[6]} | #{@board[7]} | #{@board[8]} |".colorize(:light_blue)
        puts "\n"
    end

    def update_board(user_input, position)
        @board[position] = user_input 
    end

    def winning_positions
        @win1 = @board[0] == @board[1] && @board[1] == @board[2]
        @win2 = @board[3] == @board[4] && @board[4] == @board[5]
        @win3 = @board[6] == @board[7] && @board[7] == @board[8]
        @win4 = @board[0] == @board[3] && @board[3] == @board[6]
        @win5 = @board[1] == @board[4] && @board[4] == @board[7]
        @win6 = @board[2] == @board[5] && @board[5] == @board[8]
        @win7 = @board[0] == @board[4] && @board[4] == @board[8]
        @win8 = @board[2] == @board[4] && @board[4] == @board[6]
    end
end