require "./car"

class SportCar < Car
	def initialize
		@motor = 2000
		@model =  "Sport"
		@max_speed = 250
	end
end