class Bike

  attr_reader :status

  def initialize(status)
    @status = status
  end

  def working?
    true
  end
end
