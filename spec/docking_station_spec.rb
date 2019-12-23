require 'docking_station'

describe DockingStation do

  let(:bike) { double("Bike", broken: true)}

  describe "#release_bike" do
    it "responds to 'release_bike' method" do
      expect(subject).to respond_to(:release_bike)
    end

    it "returns true to the working? method" do
      allow(bike).to receive(:working?).and_return(true)
      expect(bike.working?).to eq true
    end

    it "gives an error message if there is no biked docked" do
      expect { subject.release_bike }.to raise_error("There is no bike available!")
    end

    it "will not release a broken bike" do
      subject.dock(bike)
      expect(subject.release_bike).to eq nil
    end
  end

  describe "#dock" do
    it "stores Bike instances in an instance of DockingStation" do
      expect(subject.dock(bike)).to eq [bike]
    end

    it "raises an error message if the docking station is at full capacity" do
      station = DockingStation.new(25)
      expect { 26.times { station.dock(Bike.new) } }.to raise_error("Bike capacity full!")
    end

    it "raises an error message if the docking station is at full default capacity" do
      station = DockingStation.new
      expect { 21.times { station.dock(Bike.new) } }.to raise_error("Bike capacity full!")
    end

  end

  describe "#docked_bikes" do
    it "check if the DockingStation has a bike" do
      subject.dock(bike)
      expect(subject.docked_bikes).to eq [bike]
    end

    it "check if the DockingStation has a bike" do
      expect(subject.docked_bikes).to eq []
    end
  end

end
