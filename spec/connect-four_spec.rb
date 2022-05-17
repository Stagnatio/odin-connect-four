require './lib/connect-four.rb'

describe Game do
    it "is between 0 and 6" do
        game = Game.new
        game.pick_column should be > -1
        game.pick_column should be < 7
    end
end