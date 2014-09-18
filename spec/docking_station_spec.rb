require 'docking_station'

describe DockingStation do

	let(:bike) { Bike.new }
	let(:station) { DockingStation.new(:capacity => 20) }

	it "should accept a bike" do # we will be testing by looking at the bike count in the station.
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end

	it "should release a bike" do 
		# we will be testing by docking a bike into station (eq: 1)
		# release the bike so that the station eq: 0
		# thats how we know a bike has been released
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(0)
	end

	it "should know when it's full" do
		expect(station).not_to be_full
		20.times { station.dock (Bike.new) } 
		# runs the dock method(with Bike instance as the argument)
		# which shovels 20 instances of bike into the @bikes array
		expect(station).to be_full
		# behaviour predicted is the capacity
	end

end
