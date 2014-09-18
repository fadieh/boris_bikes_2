class DockingStation

	def initialize
		# initialise bikes as an empty array
		@bikes = []
	end

	# counts the number of bikes in the array
	def bike_count
		@bikes.count
	end

	def dock(bike) # this needs to shovel the instance into the array.
		@bikes << bike
	end

	def release(bike)
		@bikes.delete(bike)
	end

end