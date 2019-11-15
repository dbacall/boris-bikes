require "./lib/bikes"

class DockingStation
  
  def initialize
    @bike_capacity = 0
  end

  def release_bike
    raise "There is no bike available!" if !@docked_bike
    @docked_bike
  end

  def dock(bike)
    raise "Bike capacity full!" if @bike_capacity == 1
    @bike_capacity += 1
    @docked_bike = bike
  end

  attr_reader :docked_bike
  # def docked?
  #   @docked_bike
  # end
  
end

