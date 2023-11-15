require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# create 3 more stores:
Surrey = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)

Whistler = Store.create(
  name: "Surrey",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

Yaletown = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true
)

# Using the where class method from Active Record, 
# fetch (a collection of) only those stores that carry men's apparel. 
# Assign the results to a variable @mens_stores.
@mens_stores = Store.where(
  mens_apparel: true
)

# debug: pretty print those stores
# pp @mens_stores

# Loop through each of these stores
# output their name and annual revenue on each line.
@mens_stores.each do |store|
  puts "The store named #{store.name} has an annunal revenue #{store.annual_revenue}"
end

# Do another fetch but this time load stores that carry women's apparel 
# and are generating less than $1M in annual revenue.
@womens_stores_less_revenue = Store.where(womens_apparel: true)
                                    .where("annual_revenue < ?", 1000000)

# works same as above but using string-style
# Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1_000_000)

pp @womens_stores_less_revenue