# rover.rb

class Rover
	def initialize(x,y,heading)
		@x =x
		@y = y
		@heading = heading
	end
	def current_heading
		@heading
	end
	def turn_left
		@heading = @heading.turn_left_from(@x,@y)
	end
	def turn_right
		@heading = @heading.turn_right_from(@x,@y)
	end
end

class North
	def	turn_left_from(x,y)
		West.new
	end
	def	turn_right_from(x,y)
		East.new
	end
	def equal?(other)
		other.kind_of? North
	end
end

class West
	def	turn_left_from(x,y)
		South.new
	end
	def	turn_right_from(x,y)
		North.new
	end
	def equal?(other)
		other.kind_of? West
	end
end
class East
	def	turn_left_from(x,y)
		North.new
	end
	def	turn_right_from(x,y)
		South.new
	end
	def equal?(other)
		other.kind_of? East
	end
end
class South
	def turn_left_from(x,y)
		East.new
	end
	def turn_right_from(x,y)
		West.new
	end
	def equal?(other)
		other.kind_of? South
	end
end
