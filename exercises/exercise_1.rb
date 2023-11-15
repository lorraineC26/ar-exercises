require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# create 3 stores in the database
Burnaby = Store.create(
  name: "Burnaby",
  annual_revenue: 300000,
  mens_apparel: true,
  womens_apparel: true
)

Richmond = Store.create(
  name: "Richmond",
  annual_revenue: 1260000,
  mens_apparel: false,
  womens_apparel: true
)

Gastow = Store.create(
  name: "Gastow",
  annual_revenue: 190000,
  mens_apparel: true,
  womens_apparel: false
)

# Output the number of the stores using ActiveRecord's count method, to ensure that there are three stores in the database.
puts Store.count
