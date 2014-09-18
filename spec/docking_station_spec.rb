require 'docking_station'

describe DockingStation do

	it "should accept a bike" do # we will be testing by looking at the bike count in the station.
		bike = Bike.new # 'bike is a new instance'
		station = DockingStation.new
		expect(station.bike_count).to eq(0)
		station.dock(bike)
		expect(station.bike_count).to eq(1)
	end
end
