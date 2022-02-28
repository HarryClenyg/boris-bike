require_relative 'bike'

class Garage
  
  def initialize
    @stored_bikes = []
  end

  def store_bikes(broken_bikes)
    @stored_bikes = broken_bikes
    @stored_bikes.each {|bike| bike.status = true}
  end
end
