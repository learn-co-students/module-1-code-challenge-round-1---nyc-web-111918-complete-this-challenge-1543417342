require 'pry'

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
#helper method
  def reviewer
    Review.all.select do |review_item|
      review_item.restaurant_name == self
    end
  end

  def customers
    #selects from reviews method relevant reviews, by pulling out .cutomer_name and putting in an array. I use uniq! to return uniq array of names
    all = []
    reviewer.each do |review_item|
      # binding.pry
      all << review_item.customer_name
    end
    all.uniq!
    all
  end

  def reviews
    #uses reviews helper method and enumerates with select through the array output of reviews and uses select to take out the reviews and put in an Array
    #could also use an empty array and each enum and shovel inito the empty array and then teturn the array.
    all = []
    reviewer.each do |review_item|
      # binding.pry
      all << review_item.review
    end
    all.uniq!
    all
  end

  def average_star_rating
    #this would also use reviews but instead of an array it puts the info to ahash sort by hash and the returns
    #actually into array then use reduce. to average
    all = []
    reviewer.each do |review_item|
      # binding.pry
      all << review_item.rating_score
    end
    all.reduce{|sum,star| sum+star}/all.length
  end

  def longest_review
    all = []
    hash = {}
    reviewer.each do |review_item|
      # binding.pry
      all << review_item.the_review
    end
    all.each do |a_review|
      hash[a_review] = a_review.length
    end
    hash.sort[0][0]
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
