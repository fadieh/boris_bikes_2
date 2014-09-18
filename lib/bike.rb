class Bike

	# initialize method always called when you create a new
	# class by typing Bike.new

	def initialize
		# all instance variables begin with an @
		# this must be an instance variable because we'll need it
		# in other methods
		@broken = false
	end

	def broken?
		# instance varaiables are accesible in all methods
		@broken
	end
	def break!
		# any instance method can update them.
		@broken = true
	end

	def fix!
		@broken = false
	end
end