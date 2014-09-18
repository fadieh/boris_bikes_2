require 'docking_station'

describe DockingStation do

	let(:bike) { Bike.new }
	let(:station) { DockingStation.new(:capacity => 20) }

	# defining the method in the initialising of the dock is an rspec helper.
	def fill_station(station)
		20.times { station.dock(Bike.new) }
	end

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
		fill_station(station)
		# runs the dock method(with Bike instance as the argument)
		# which shovels 20 instances of bike into the @bikes array
		expect(station).to be_full
		# behaviour predicted is the capacity

	end

	it "should not accept a bike if it's full" do
		fill_station(station)
		# If it doesn't make sense, I'll move on. Station can't dock another bike
		# So it'll raise an Error.
		# Lambda prevents the programme from crashing.
		# because station has a capacity of 20.
		# there are 20 bikes docked into the station.
		# dock raises Error if full is true.
		# this makes the test pass.
		expect(lambda { station.dock(bike) }).to raise_error(RuntimeError)
	end

	it "should provide the list of available bikes" do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		station.dock(working_bike)
		station.dock(broken_bike)
		# available_bikes rejects the broken bike that is docked into the station.
		# new hash available_bikes should equal [working_bike]
		expect(station.available_bikes).to eq([working_bike])
	end

end
