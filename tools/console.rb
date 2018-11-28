require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customer
c1 = Customer.new("Bob", "Smith")
c2 = Customer.new("Mike", "LastName")

rest1 = Restaurant.new("Foodberg")

rest2 = Restaurant.new("Bad Food City")


#review (star_rating, review, customer, restaurant)
rev1 = Review.new(3, "yum", c1 , rest1 )
rev2 = Review.new(1, "yuck", c2, rest1 )

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
