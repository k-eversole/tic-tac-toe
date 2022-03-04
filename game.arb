class Game
attr_accessor :board, :first_player, :second_player, :current_player

    def initialize
        @board = Board.new
        @first_player = ""
        @second_player = ""
        @current_player = ""
    end

    def run_game
        setup
        game_loop
        end_game
    end

    private

    def setup
        Display.welcome
        @first_player = create_player("One")
        @second_player = create_player("Two")
    end

    def game_loop
         until board.game_won? || board.grid_full?
            board.show_board
            player_turn
         end
    end


    def create_player(num)
        Display.name_prompt(num)
        name = gets.chomp
        unless num == "One"
            Player.new(name, "X")
        else Player.new(name, "O")
        end
    end

    def set_current
        if @current_player == @first_player
            @current_player = @second_player
        else @current_player = @first_player
        end
    end

    def player_turn
        set_current
        Display.turn_prompt(current_player.name)
        while input = gets.chomp
            unless board.valid_move?(input)
                Display.invalid_move
            else board.change_board(input, current_player.symbol)
                break
            end
        end
    end

    def end_game
        board.show_board
        unless board.game_won?
            Display.tie_message
        else Display.win_message(current_player.name)
        end
    end
end