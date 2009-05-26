# rover_specs.rb

require "rover"

describe Rover, "when a rover that is facing north is told to turn 90 degrees to the left" do
	it "should be facing west" do
		rover = Rover.new(1,2, North.new)
		rover.turn_left
		rover.current_heading.should equal( West.new )
	end
end
describe Rover, "when a rover that is facing north is told to turn 90 degrees to the right" do
	it "should be facing east" do
		rover = Rover.new(1,2, North.new)
		rover.turn_right
		rover.current_heading.should equal( East.new )
	end
end
describe Rover, "when a rover that is facing east is told to turn 90 degrees to the left" do
	it "should be facing north" do
		rover = Rover.new(1,2, East.new)
		rover.turn_left
		rover.current_heading.should equal( North.new )
	end
end
describe Rover, "when a rover that is facing east is told to turn 90 degrees to the right" do
	it "should be facing south" do
		rover = Rover.new(1,2, East.new)
		rover.turn_right
		rover.current_heading.should equal( South.new )
	end
end
describe Rover, "when a rover that is facing south is told to turn 90 degrees to the left" do
	it "should be facing east" do
		rover = Rover.new(1,2, South.new)
		rover.turn_left
		rover.current_heading.should equal( East.new )
	end
end
describe Rover, "when a rover that is facing south is told to turn 90 degrees to the right" do
	it "should be facing west" do
		rover = Rover.new(1,2, South.new)
		rover.turn_right
		rover.current_heading.should equal( West.new )
	end
end
describe Rover, "when a rover that is facing west is told to turn 90 degrees to the left" do
	it "should be facing south" do
		rover = Rover.new(1,2, West.new)
		rover.turn_left
		rover.current_heading.should equal( South.new )
	end
end
describe Rover, "when a rover that is facing west is told to turn 90 degrees to the right" do
	it "should be facing north" do
		rover = Rover.new(1,2, West.new)
		rover.turn_right
		rover.current_heading.should equal( North.new )
	end
end
