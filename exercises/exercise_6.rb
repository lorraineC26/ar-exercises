require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(
  first_name: "Khurram", 
  last_name: "Virani", 
  hourly_rate: 60
)

@store1.employees.create(
  first_name: "Jane", 
  last_name: "Doe", 
  hourly_rate: 90
)

@store1.employees.create(
  first_name: "Alice", 
  last_name: "Johnson", 
  hourly_rate: 55
)

@store2.employees.create(
  first_name: "Bob", 
  last_name: "Smith", 
  hourly_rate: 65
)

@store2.employees.create(
  first_name: "Eva", 
  last_name: "Martinez", 
  hourly_rate: 70
)

@store2.employees.create(
  first_name: "David", 
  last_name: "Chen", 
  hourly_rate: 58
)

@store2.employees.create(
  first_name: "Grace", 
  last_name: "Brown", 
  hourly_rate: 62
)




