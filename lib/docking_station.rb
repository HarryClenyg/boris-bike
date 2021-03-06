require_relative 'bike'

class DockingStation
  
  attr_reader :bike
  attr_reader :bike_array
  attr_reader :capacity
  
  def initialize(bike_array = [], capacity= 20)
    @bike_array = bike_array
    @capacity = capacity
  end

  def release_bike
    if @bike_array.empty?
      fail 'No bikes available'
    else
      sort_by_status
      check_status
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

  def check_status
    if @bike.status == false 
      @bike_array << @bike
      fail "This bike is broken"
    else
      @bike
    end
  end

  def sort_by_status
    @bike_array.sort_by!(&:status)
  end
end
