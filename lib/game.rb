require 'player'
require 'game'
require 'computer'


class Game

  def initialize(player1, target = 5, player2 = Computer.new)
    @player1 = player1
    @player2 = player2
    @target = target
  end

  def this_go
    #basically we want to check who wins.
    # If player1 wins then print @player1.name won and add to player 1's tally
    # if @player2 wins then print @player2.name won and add to player 2's tally
    # else print tie. (change nothing)
    # check if player1.wins == target
    # otherwise check if player2.wins == target
    # if so redirect to end page and winner is player
  end


end
