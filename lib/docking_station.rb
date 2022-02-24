require_relative 'bike'

class DockingStation
  
  attr_reader :bike
  attr_reader :capacity
  
  def initialize(bike_array = [], capacity= 20)
    @bike_array = bike_array
    @capacity = capacity
  end

  def release_bike
    if @bike_array.empty?
      fail 'No bikes available'
    else
      @bike_array.pop
    end
  end

  def dock(bike)
    @bike = bike
    if dock_full?
      fail 'Dock is full'
    else
      @bike_array << bike
    end
    return @bike
  end

  def dock_full?
    @bike_array.size == @capacity
  end
end

class Bike
  def working?
      true
  end

  def broken?
    'Broken'
  end
end
