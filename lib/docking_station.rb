class DockingStation

	DEFAULT_CAPACITY = 10

	def initialize(options = {})
		# fetch called on options which is a hash therefore capacity = :capacity
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		# initialise bikes as an empty array
		@bikes = []
	end

	# counts the number of bikes in the array
	def bike_count
		@bikes.count
	end

	def dock(bike) # this needs to shovel the instance into the array.
		raise "Station is full" if full?
		@bikes << bike
	end

	def release(bike)
		@bikes.delete(bike)
	end

	def full?
		bike_count == @capacity
	end

	def available_bikes
		# reject broken bike(s) inside @bikes
		# INCEPTION, reject creates an array within an array.
		# moves it into 2 lists in the same 
		@bikes.reject {|bike| bike.broken? }
	end
end