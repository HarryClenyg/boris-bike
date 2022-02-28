require 'bike'

describe Bike do
  it "responds to the check status method" do
    bike = Bike.new("working")
    expect(bike.status).to be true
  end
end