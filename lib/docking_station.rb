require "./lib/bikes"

class DockingStation
  attr_reader :docked_bikes
  # def docked?
  #   @docked_bikes
  # end

  def initialize
    @docked_bikes = []
  end

  def release_bike
    raise "There is no bike available!" if @docked_bikes.length == 0
    @docked_bikes.pop
  end

  def dock(bike)
    raise "Bike capacity full!" if @docked_bikes.length >= 20
    @docked_bikes << bike
  end


end
