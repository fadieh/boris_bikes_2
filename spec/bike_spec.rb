require 'bike'
# contents of bike exist here.

describe Bike do

	# defines variables used by all tests
	# let() defines a local variable "bike"
	# using the block provided (same code that existed in all tests.)
	# functionality the same.
	# 
	let(:bike) { Bike.new }

	it "should not be broken after we create it." do
		#although repeated on line 26, doesn't make sense to extract into own methods for readability.
		expect(bike).not_to be_broken
	end

	it "should be able to break" do
		bike.break!
		expect(bike).to be_broken
	end

	it "should be able to get fixed" do
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken	
	end

end