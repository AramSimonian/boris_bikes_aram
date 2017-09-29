require "docking_station"

describe DockingStation do

  subject(:station) {DockingStation.new(2)}

  describe "#bikes" do
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bikes[0]).to eq bike
    end
  end

  it 'allows user to set capacity' do
    expect(DockingStation).to respond_to(:new).with(1).argument
  end

  describe "#release_bike" do
    context "given the method 'release bike'"
      it 'fails if there is no bike to be released' do
        expect { subject.release_bike }.to raise_error "Bike not available"
      end
  end

  describe "#dock_bike" do
    it 'docks something' do
      bike = Bike.new
      expect(station.dock_bike(bike)[0]).to eq bike
    end

    it 'fails if there is already a docked bike' do
      capacity = 4
      ds = DockingStation.new(capacity)
      capacity.times { ds.dock_bike(Bike.new) }
      # ds.dock_bike(Bike.new)
      expect {ds.dock_bike(Bike.new)}.to raise_error "Docking station full"
    end

  end

end
