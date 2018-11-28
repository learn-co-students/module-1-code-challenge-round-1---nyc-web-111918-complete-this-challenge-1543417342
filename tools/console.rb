require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customer :first_name, :last_name
c1 = Customer.new("Emily", "Asch")
c2 = Customer.new("Hayley", "Shear")
c3 = Customer.new("Olivia", "Radick")
c4 = Customer.new("Emily", "Smith")


#restaurant
r1 = Restaurant.new("Jin Ramen")
r2 = Restaurant.new("Chipotle")
r3 = Restaurant.new("McDonalds")

#rating (customer, restaurant, rating, content)
rt1 = Review.new(c1,r1,5,"Love")
rt2 = Review.new(c1,r2,3, "amazing")
rt3 = Review.new(c2,r3,2, "gross")
rt4 = Review.new(c3,r3,2, "gross")




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
