class Van
  
  attr_reader :broken_bikes
  def initialize
    @broken_bikes = []
  end

  def retrieve_bikes(docked_bikes)

    @broken_bikes = docked_bikes.select{ |bike| bike.status == false }
  end
end