require "DockingStation"
require "bike"

describe DockingStation do

  describe ".release_bike" do
    context "given the method 'release bike'"
      it 'responds to the method "release_bike"' do
        expect(subject).to respond_to :release_bike
      end

    context "release_bike returns object of type Bike"
      it 'returns object of type Bike' do
        expect(subject.release_bike).to be_instance_of Bike
      end

  end
end

describe Bike do
  describe "working?" do
    it 'responds to the method "working?"' do
      expect(subject).to respond_to :working?
    end

  end
end
