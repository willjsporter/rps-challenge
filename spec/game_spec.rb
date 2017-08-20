require 'game'

describe Game do

  context "stores players" do

    it "initializes with 2 players (one may be computer)" do
      expect { described_class.new }.to raise_error(ArgumentError)
    end
    
  end
  # unneccessary as tested by below
  # context "stores outcome of game in player" do
  #
  #   it "this_go adds a win to player's tally for the game" do
  #
  #   end
  #
  # end

  context "if one player reaches the set number of wins needed to win then the game will finish" do

    it "if game completed then a method to end the game (and go to an end page is created)" do

    end

  end

end
