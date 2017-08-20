require '../app.rb'
require 'player'

describe Player do
# let(:player) {Player.new("Rolando")}
subject { described_class.new("Will") }

  context "rejects improper moves" do

    it "won't allow input other than rock, paper, scissors, lizard or spock" do
      expect { subject.move("asdf") }.to raise_error "Must enter a valid weapon"
    end

  end

  context 'has a name' do

    it 'returns player name' do
      expect(subject.name).to eq "Will"
    end

  end

  it "specifies moves" do
    expect(subject.move("rock")).to eq "rock"
  end

  context 'keeps track of number of wins' do

    it 'increases number of wins when a round is won' do
      expect { subject.won_round }.to change { subject.wins }.by 1
    end

  end

end
