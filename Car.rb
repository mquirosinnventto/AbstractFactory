class Car

	def initialize 
		@motor = nil
		@model =  nil
		@max_speed = nil
		
		if self.class.name == "Payment"
			raise NotImplementedError.new("#{self.class.name} is an abstract class") 
		end
	end

	def toString
		self.instance_variables.map do |var|
		  puts [var, self.instance_variable_get(var)].join(":")
		end
	end

end