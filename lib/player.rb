require 'weapon'

class Player

  include WeaponList

  attr_reader :wins, :name

  def initialize(name = "Player1")
    @wins = 0
    @name = name
  end

  def move(input)
    raise "Must enter a valid weapon" unless WeaponList::WEAPONS.include? input.intern
    return input
  end

  def won_round
    @wins +=1
  end

  end
