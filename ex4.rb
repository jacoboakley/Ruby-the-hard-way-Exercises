# number of cars
cars = 100
# how many people can fit in a car
space_in_a_car = 4.0
# number of drivers
drivers = 30
# number of passengers
passengers = 90
# number of cars that will be sitting in the parking lot
cars_not_driven = cars - drivers
# number of cars out on the roads
cars_driven = drivers
# number of people that could be driven at one time
carpool_capacity = cars_driven * space_in_a_car
# number of people in each car if we put the same number in all cars
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transpport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."