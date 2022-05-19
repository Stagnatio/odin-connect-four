require './lib/connect-four.rb'

describe Game do
    it "column is between 0 and 6" do
        game = Game.new
        expect(game.pick_column).to be > -1
        expect(game.pick_column).to be < 7
    end
end