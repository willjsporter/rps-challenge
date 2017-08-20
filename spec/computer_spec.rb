require 'computer'
require 'weapon'

describe Computer do

    context "chooses a weapon" do

      it "picks a random weapon each go" do
        expect(WeaponList::WEAPONS).to receive(:sample)
        subject.move
      end

    end

    context "stores number of wins" do

      it "adds each win to a counter" do
        expect { subject.won_round }.to change {subject.wins}.by 1
      end

    end



end
