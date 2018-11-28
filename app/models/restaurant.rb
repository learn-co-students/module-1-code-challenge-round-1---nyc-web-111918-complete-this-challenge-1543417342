class Restaurant
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

## Class Methods above
## --------------->
##  initialize and instance methods below

  def initialize(name)
    @name = name

    @@all << self
  end
#helper methods
  def reviews
    Review.all.select do |reviews|
      reviews.restaurant_name == self
    end
  end

  def customer
    #selects from reviews method relevant reviews, by pulling out .cutomer_name and putting in an array. I use uniq! to return uniq array of names
  end

  def reviews
    #uses reviews helper method and enumerates with select through the array output of reviews and uses select to take out the reviews and put in an Array
    #could also use an empty array and each enum and shovel inito the empty array and then teturn the array.
  end

  def average_star_rating
    #this would also use reviews but instead of an array it puts the info to ahash sort by hash and the returns
    #actually into array then use reduce. to average
  end
end #end of restaurant class


#Deliverables
#### Build out the following methods on the `Restaurant` class

# - `Restaurant.all`
#   - returns an array of all restaurants
#done
# [2] pry(main)> Restaurant.all
# => [#<Restaurant:0x007fac092072b0 @name="NY Pizza Place">,
#  #<Restaurant:0x007fac09207260 @name="Pasta R Us">,
#  #<Restaurant:0x007fac09207210 @name="Sushi 4 Life">]
# [3] pry(main)>

# - `Restaurant.find_by_name(name)`

#   - given a string of restaurant name, returns the first restaurant that matches
#Done
# [1] pry(main)> Restaurant.find_by_name("NY Pizza Place")
# => #<Restaurant:0x007fac092072b0 @name="NY Pizza Place">
# [2] pry(main)>
