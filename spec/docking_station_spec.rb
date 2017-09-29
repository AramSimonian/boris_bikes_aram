require "docking_station"

describe DockingStation do

  describe "#bikes" do
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end

    # it 'when bikes is called, @bikes is returned' do
    #   bike = Bike.new
    #   expect(subject.bikes).to eq bike
    # end
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
      expect(ds.dock_bike(Bike.new)).to be_instance_of Bike
    end

    it 'fails if there is already a docked bike' do
      ds = DockingStation.new
      ds.dock_bike(Bike.new)
      expect {ds.dock_bike(Bike.new)}.to raise_error "Docking station full"
    end

#    it "the dock_bike method should return the bikes array if successful" do
#      expect(ds.dock_bike(bike)).to be_instance_of Array
#    end

#    it "the dock_bike method should have populated the bikes array" do
#      expect(ds.bikes.count).to eq(1)
#    end
  end

  # describe ".bikes" do
  #   it "returns an array with all the docked bikes" do
  #     expect(subject.bikes).to be_instance_of Array
  #   end
  # end


end
