require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find(3)

#delete the store from db
@store3.destroy

#verify it has beed deleted
puts Store.count
