require 'garage'

describe Garage do
  it 'stores broken bikes from van' do
    bike = double(:bike, status: false)
    van = double(:van, broken_bikes: [bike])
    expect(subject.store_bikes(van.broken_bikes)).to be_a Array
    expect(subject.store_bikes(van.broken_bikes[0])).to eq bike
  end
  
  
end

