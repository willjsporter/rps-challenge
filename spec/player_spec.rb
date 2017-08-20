require '../app.rb'
require 'player'

describe Player do
# let(:player) {Player.new("Rolando")}

  context 'Player has a name' do

    it 'returns player name' do
      expect(described_class.new("Will")).to eq "Will"
    end

  end

end
