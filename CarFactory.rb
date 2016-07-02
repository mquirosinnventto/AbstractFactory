require "./SportCar"
require "./FamilyCar"

class CarFactory

	def initialize
		@manofacturer = nil 
		@car = nil 
		if self.class.name == "CarFactory"
			raise NotImplementedError.new("#{self.class.name} is an abstract class") 
		end
	end	

	def self.get_factory(type)
		case type
		when "VW"
			VWCarFactory.new
		when "Renault"
			RenaultCarFactory.new
		else
			raise NotImplementedError.new("#{self.class.name} is an abstract method") 
		end
	end

	def get_car
		@car
	end

	def create_car
		raise NotImplementedError.new("#{self.class.name} is an abstract method") 
	end

end

class VWCarFactory < CarFactory
	def initialiaze
		@manofacturer = "VW"
	end

	def create_car(car_type)
		if car_type == :sport
			@car = SportCar.new
		elsif car_type == :family
			@car = FamilyCar.new
		end
	end
end

class RenaultCarFactory < CarFactory
	def initialiaze
		@manofacturer = "Renault"
	end

	def create_car(car_type)
		if car_type == :sport
			@car = SportCar.new
		elsif car_type == :family
			@car = FamilyCar.new
		end
	end
end