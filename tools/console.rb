require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
c1 = Customer.new("bob", "smith")
c2 = Customer.new("bob", "smyth")

r1 = Restaurant.new("chilis")
r2 = Restaurant.new("the tang")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
