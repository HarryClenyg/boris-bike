class Bike

  attr_reader :status

  def initialize(status) #true = working, false = broken
    if "working"
      @status = true
    else
      @status = false
    end 
  end
end
