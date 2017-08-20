require 'game'

describe Game do

  context "prevents" do

    it "instance of game being initialized without proper input" do
      expect { described_class.new("asdf") }.to raise_error "Must enter a valid move"
    end

  end

  context "outcome of game" do

    it 'returns tie, play again if both players match' do
      expect(described_class.new('rock')).beats?('rock')
    end

    it "Rock beats lizard" do
      expect(described_class.new('rock')).beats?('lizard').to eq true
    end

    it "Rock beats scissors" do
      expect(described_class.new('rock')).beats?('scissors').to eq true
    end

    it "Scissors beats lizard" do
      expect(described_class.new('scissors')).beats?('lizard').to eq true
    end

    it "Scissors beats paper" do
      expect(described_class.new('scissors')).beats?("Paper").to eq true
    end

    it "Paper beats Spock" do
      expect(described_class.new("Paper")).beats?("Spock").to eq true
    end

    it "Paper beats rock" do
      expect(described_class.new("Paper")).beats?('rock').to eq true
    end

    it "Spock beats scissors" do
      expect(described_class.new("Spock")).beats?('scissors').to eq true
    end

    it "Spock beats rock" do
      expect(described_class.new("Spock")).beats?('rock').to eq true
    end

    it "Lizard beats Paper" do
      expect(described_class.new("lizard")).beats?("Paper").to eq true
    end

    it "Lizard beats Spock" do
      expect(described_class.new("lizard")).beats?("Spock").to eq true
    end

  end

end
