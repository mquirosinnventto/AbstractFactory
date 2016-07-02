require "./car"

class FamilyCar < Car
	def initialize
		@motor = 1400
		@model =  "Family"
		@max_speed = 150
	end
end