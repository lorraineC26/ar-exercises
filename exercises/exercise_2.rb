require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Load the first store(id=1); assign it to an instance variable @store1
@store1 = Store.find(1)

# Load the second
@store2 = Store.find(2)

# update @store1 instance in the db
@store1.update(name: "Bokchoy's Store")
puts @store1.name