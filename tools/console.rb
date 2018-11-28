require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Michael", "Muniz")
c2 = Customer.new("Alfred", "Johnson")
c3 = Customer.new("John", "Mendez")
c4 = Customer.new("Michael", "Monroe")

r1 = Restaurant.new("Lucia's Pizza")
r2 = Restaurant.new("Outback Steakhouse")
r3 = Restaurant.new("Applebees")
r4 = Restaurant.new("Tony Romas")

re1 = Review.new(c1, r1, 10, "it was amazing!")
re2 = Review.new(c1, r2, 8, "was pretty good")
re3 = Review.new(c2, r3, 5, "eh")
re4 = Review.new(c2, r1, 7, "was alright")
re5 = Review.new(c3, r4, 3, "this was horrifying")
re6 = Review.new(c3, r1, 5, "jesus wheres gordon with the roast?")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
