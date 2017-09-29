require "docking_station"

describe DockingStation do

  describe "#bikes" do
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bikes[0]).to eq bike
    end

  end

  describe "#release_bike" do
    context "given the method 'release bike'"
      it 'fails if there is no bike to be released' do
        ds = DockingStation.new
        expect { ds.release_bike }.to raise_error "Bike not available"
      end
  end

  describe "#dock_bike" do
    ds = DockingStation.new

    it 'docks something' do
      bike = Bike.new
      expect(ds.dock_bike(bike)[0]).to eq bike
    end

    it 'fails if there is already a docked bike' do
      ds = DockingStation.new
      DockingStation::DEFAULT_CAPACITY.times { ds.dock_bike(Bike.new) }
      # ds.dock_bike(Bike.new)
      expect {ds.dock_bike(Bike.new)}.to raise_error "Docking station full"
    end

  end

end
