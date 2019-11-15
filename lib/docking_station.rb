require "./lib/bikes"

class DockingStation
  
  attr_reader :docked_bikes
  # def docked?
  #   @docked_bikes
  # end

  DEFAULT_CAPACITY = 20

  def initialize
    @docked_bikes = []
  end

  def release_bike
    raise "There is no bike available!" if empty?
    @docked_bikes.pop
  end

  def dock(bike)
    raise "Bike capacity full!" if full?
    @docked_bikes << bike
  end

  private
  def empty?
    @docked_bikes.length == 0
  end

  def full?
    @docked_bikes.length >= DEFAULT_CAPACITY
  end

end
