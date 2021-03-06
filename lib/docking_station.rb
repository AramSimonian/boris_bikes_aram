#require_relative "./bike"
require File.dirname(__FILE__) + "/bike"

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes#, :capacity

  def initialize(capacity)
    @bikes = []
    @capacity = capacity
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
      @bikes.count >= @capacity
    end

    def empty?
      @bikes.empty?
    end

end
