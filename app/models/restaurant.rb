class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

#returns list of all Restaurants
  def self.all
    @@all
  end

  def self.find_by_name(name)
    restaurant_array = Restaurant.all.select do |restaurant|
      restaurant.name == name
    end
    restaurant_array.first
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    customer_array = self.reviews.map do |review|
      review.customer
    end
    customer_array.uniq
  end

  def average_star_rating
    #creates array of review ratings for a restaurant
    rating_array = self.reviews.map do |review|
      review.rating
    end
    #divides review rating total by review number of review ratings (in float form)
    rating_array.inject(:+)/ rating_array.size.to_f
  end

  def longest_review
    #generates array of reviews sorted by content shortest to longest
    review_array = self.reviews.sort_by do |review|
      review.content.length
    end
    #returns content of last element in the array
    review_array.last.content
  end

end
