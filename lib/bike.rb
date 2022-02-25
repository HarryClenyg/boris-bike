class Bike

  attr_reader :status

  def initialize(status) #true = working, false = broken
    @status = status
  end
end
