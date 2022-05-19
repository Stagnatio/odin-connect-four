class Game
    def initialize
        @board = Array.new(7) {Array.new(7)}
        @current_piece = ""
        play_game
    end

    def play_game
        loop do
            if @current_piece == "red"
                @current_piece = "blu"
            else
                @current_piece = "red"
            end

            column = pick_column
            #puts @board[column][0]
            #@board[column].each do |n|
            #    puts n
            #    if !@board[column][n]
            #        @board[column][n] = current_piece
            #        break
            #    end
            #end
            for i in 0..6
                if !@board[column][i]
                    @board[column][i] = @current_piece
                    if @board[column][6]
                        print_board
                        exit
                    end
                    break
                end
            end
            print_board
        end
    end

    def pick_column
        column = rand(6)
        #puts column
        column
    end

    def print_board
        for i in 0..6
            print "| "
            for j in 0..6
                if @board[j][i] == nil
                    print "   " + " | "
                else
                    print @board[j][i].to_s + " | "
                end
            end
            puts
        end
        puts
    end

    # define 7 arrays, one for each column
    # if column[6] != nil, push the current player symbol to the column
end

pickles = Game.new