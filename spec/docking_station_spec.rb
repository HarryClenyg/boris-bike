require 'docking_station'

describe DockingStation do
#     it "responds to method release_bike" do
#         expect(subject).to respond_to('release_bike')
#     end

#     it "gets a bike and expects it to work" do
#         bike = Bike.new
#         subject.dock(bike)
#         # bike = subject.release_bike
#         expect(subject.release_bike.working?).to eq(true)
#     end

#     it "takes a bike and expects it can dock" do
#       bike = Bike.new
#       expect(subject.dock(bike)).to eq bike  
#     end

#     it "returns docked bike" do
#     bike = Bike.new
#     subject.dock(bike)
#     expect(subject.bike).to eq bike        
#     end

#     it "raises error when empty" do
#         bike = Bike.new
#         subject.dock(bike)
#         expect(subject.release_bike).to eq bike
#     end

#     describe "release bike error" do
#         it "raises an error when there are no bikes available" do
#             expect { subject.release_bike }.to raise_error 'No bikes available'
#         end
#     end
    
#     it "raises error when dock full" do
#       subject.capacity.times{ subject.dock(Bike.new) }
#         expect do
#         bike = Bike.new
#         subject.dock(bike)
#       end.to raise_error 'Dock is full'
#     end

#     it "docking station has a default capacity of 20" do
#       expect(subject.capacity).to eq(20)
#     end

#     it "bike can be reported as broken" do
#       expect(subject.dock(Bike.new).broken?).to eq 'Broken'
#     end

    it "doesn't release broken bikes" do
      bike = Bike.new("broken")
      subject.dock(bike)
      expect{ subject.release_bike }.to raise_error 'This bike is broken'
    end
end