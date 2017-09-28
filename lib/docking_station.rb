#require_relative "./bike"
require File.dirname(__FILE__) + "/bike"

class DockingStation
  attr_reader :bikes

  def release_bike
    bike = Bike.new
  end

  def dock_bike(bike)
    bike
  end

end
