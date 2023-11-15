require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask the user for a store name (store it in a variable)
puts "Create a new store by entering a store name:"
@user_input_store_name = gets.chomp
puts "You typed: #{@user_input_store_name}"

# Attempt to create a store with the inputted name 
# but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
new_store = Store.create(name: @user_input_store_name)


# Display the error messages provided back from ActiveRecord to the user (one on each line) 
# after you attempt to save/create the record
if new_store.save
  puts "Your store has been created!"
else
  puts "Sorry, something wrong with your store registration. Possible Errors:"
  puts new_store.errors.full_messages do |error|
    puts error
  end

end
