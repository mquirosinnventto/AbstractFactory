require "./CarFactory"

renaultFactory = CarFactory.get_factory("Renault")
renaultFactory.create_car(:sport)
car = renaultFactory.get_car()
car.toString()