class Bike

  attr_accessor :status

  def initialize(status) #true = working, false = broken
    if status == "working"
      @status = true
    else
      @status = false
    end 
  end
end
