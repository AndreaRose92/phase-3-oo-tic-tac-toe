class TicTacToe

    attr_accessor :board

    WIN_COMBINATIONS = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,4,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [2,4,6]
    ]

    def coin_flip
        Random.new == Random.new ? "X" : "O"
    end

    def initialize
        @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    end

    def display_board
        board.map{|index| index = coin_flip }
        print " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def input_to_index(user_input)
        user_input =~ /[1-9]/
        user_input.to_i - 1
    end

    def move(index, token = 'X')
        board[index] = token
    end

    def position_taken? index
        board[index] == ' ' ? false : true
    end

    def valid_move? index 
        board[index] == ' ' ? true : false
    end

    def turn_count
        board.filter{|x| x == "X" || x == "O"}.length
    end

    def current_player
        self.turn_count % 2 == 0 ? "X" : "O"
    end

    def turn 
        puts "Take Your Turn"
        index = gets
        tile = input_to_index(index)
        available = valid_move? tile
        if available
            move tile, current_player
            display_board
        else
            "invalid"
        end

        def won?
            
        end

        turn
    end


end

# [0, 1, 2]
# [3, 4 ,5]
# [6, 7, 8]