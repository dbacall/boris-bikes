require "./lib/bikes"

class DockingStation

  attr_reader :docked_bikes
  attr_accessor :capacity
  # def docked?
  #   @docked_bikes
  # end

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @docked_bikes = []
    @capacity = capacity
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
    @docked_bikes.length >= @capacity
  end

end
