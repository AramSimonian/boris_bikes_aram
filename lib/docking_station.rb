#require_relative "./bike"
require File.dirname(__FILE__) + "/bike"

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "Bike not available" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail "Docking station full" if full?
    @bikes << bike
  end

  private

    def full?
      @bikes.count >= 20
    end

    def empty?
      @bikes.empty?
    end

end
