require_relative '../lib/van'

describe Van do

  
  it 'takes bikes from docking station' do
    bike = double(:bike, status: false)
    station = double(:docking_station, bike_array: [bike])
    
    expect(subject).to respond_to 'retrieve_bikes'
    expect(subject.retrieve_bikes(station.bike_array)).to be_a Array
    expect(subject.broken_bikes).to be_a Array
    subject.retrieve_bikes(station.bike_array)
    expect(subject.broken_bikes[0]).to eq bike
    expect(subject.broken_bikes[0].status).to eq false
    
  end
  
  # it 'throws an error if van retrieves a working bike (status = true)' do
  #   bike = double(:bike, status: true)
  #   station = double(:docking_station, bike_array: [bike])
    
  #   expect{subject.broken_bikes[0]}.to raise_error "This bike is working"
    
  # end

  it 'van can deposit broken bikes at garage' do
    expect()
  end

#   it 'van can retrieve working bikes from garage' do
#     expect(subject.retrieve_bikes
end
