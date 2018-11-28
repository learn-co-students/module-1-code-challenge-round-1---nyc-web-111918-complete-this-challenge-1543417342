require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Customers
c1 = Customer.new("Josh","Cocciardi")
c2 = Customer.new("Mike", "Cheng")
c3 = Customer.new("Chris", "Metzger")

# Restaurants
r1 = Restaurant.new("NY Pizza Place")
r2 = Restaurant.new("Pasta R Us")
r3 = Restaurant.new("Sushi 4 Life")

# Reviews
rc1 = Review.new(r1,c1,5,"Yum")
rc2 = Review.new(r2,c1,4,"Such pizza. Wow.")
rc3 = Review.new(r3,c3,2,"My life")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
