class Game
    def pick_column
        column = rand(6)
        puts column
        column
    end
end

pickles = Game.new
pickles.pick_column