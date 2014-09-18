# link to the Bike class .rb file
# equivillent to copy and pasting the contents of bike.rb on line 2 of the test from Ruby's perspective
require 'bike'

# describe Bike class
describe Bike do
	# it describes what we expect to be happening
	it "should not be broken after we create it." do
		the_bike = Bike.new
		# expect method from rspec, takes the object under test in ()
		# returns special object that has different methods that make
		# the example pass or fail. depending on their arguments 

		# not_to is another rspec method
		# not_to() method takes a look at its argument 
		# which will realise that if we dont expect the bike to be_broken
		# we must have a method broken?() in the Bike Class.
		# THEREFORE, it calls this method on the Bike class.
		# if it returns true, fails the example because we don't
		# want it to be broken.
		expect(the_bike).not_to be_broken
	end
end