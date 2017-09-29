#require_relative "./bike"
require File.dirname(__FILE__) + "/bike"

class DockingStation

  attr_reader :bike

  def release_bike
    fail "Bike not available" unless @bike
    @bike
  end

  def dock_bike(bike)
    fail "Docking station full" if @bike
    @bike = bike
  end

end
