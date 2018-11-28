require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers
#if time change names for fun
c1 = Customer.new("Anthony","Williams")
c2 = Customer.new("Beatrice","Stevens")
c3 = Customer.new("Caroline","Lum")
c4 = Customer.new("Dave","Chao")
c5 = Customer.new("Eric","Lum")
c6 = Customer.new("Francis","Stewart")
c7 = Customer.new("Francis","Lee")


#restaurants
r1 = Restaurant.new("Chili's")
r2 = Restaurant.new("Pizza Hut")
r3 = Restaurant.new("The Clock Tower")


#reviews
v1 = Review.new(c1, r1, "Would definitely go back!", 5)
v2 = Review.new(c2, r1, "Great!!", 4)
v3 = Review.new(c3, r2, "It was alright.", 3)
v4 = Review.new(c4, r2, "Yummy food, but waiters rude. Overall good experience.", 4)
v5 = Review.new(c5, r3, "Excellent!", 5)
v6 = Review.new(c6, r3, "LOVE!", 5)
v7 = Review.new(c7, r1, "Terrible", 1)
v8 = Review.new(c1, r1, "It was okay.", 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
