require_relative './bike.rb'

class DockingStation
  attr_writer :bike
  alias_method :dock, :bike=

  def release_bike
    fail 'No Bikes Available' unless @bike
    @bike
  end
end
