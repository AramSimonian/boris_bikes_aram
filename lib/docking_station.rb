#require_relative "./bike"
require File.dirname(__FILE__) + "/bike" 

class DockingStation

  def release_bike
    bike = Bike.new
  end

end
