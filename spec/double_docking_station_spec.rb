require 'docking_station'

describe DockingStation do
    it "responds to method release_bike" do
      expect(subject).to respond_to('release_bike')
    end

    it "releases bike and expects it to work" do
      bike = double(:bike, status: true)
      subject.dock(bike)
      expect(subject.release_bike.status).to eq(true)
    end

    it "takes a bike and expects it can dock" do
      bike = double :bike
      expect(subject.dock(bike)).to eq bike  
    end

    it "returns docked bike" do
      bike = double :bike
      subject.dock(bike)
      expect(subject.bike).to eq bike        
    end

    describe "release bike error" do
        it "raises an error when there are no bikes available" do
            expect { subject.release_bike }.to raise_error 'No bikes available'
        end
    end
    
    it "raises error when dock full" do
      bike = double :bike
      subject.capacity.times{ subject.dock(bike) }
      expect do
        subject.dock(bike)
      end.to raise_error 'Dock is full'
    end

    it "docking station has a default capacity of 20" do
      expect(subject.capacity).to eq(20)
    end

    it "doesn't release broken bikes" do
      bike = double(:bike, status: false)
      subject.dock(bike)
      expect{ subject.release_bike }.to raise_error 'This bike is broken'
    end

    it "only releases working bikes" do
      bike = double(:bike, status: true)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
end