module WeaponList

  WEAPONS = [:rock, :paper, :scissors, :Spock, :lizard]
  Outcome = { rock: [:scissors, :lizard],
    paper: [:rock, :Spock],
    scissors: [:paper, :lizard],
    Spock: [:scissors, :rock],
    lizard: [:paper, :Spock] }
end

class Weapon
  include WeaponList

  def initialize(player_input)
    @player_input = player_input.intern
  end

  def beats?(go2)
    Outcome[@player_input].include?(go2.intern)
  end

end
