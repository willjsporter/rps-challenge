require 'weapon'

class Computer
include WeaponList

attr_reader :wins, :name

def initialize(name = "Computer")
  @wins = 0
  @name = name
end

def move
  WEAPONS.sample
end

def won_round
  @wins +=1
end

end
