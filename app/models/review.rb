class Review

  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

  @@all = []

  def self.all
    @@all
  end

  def initialize(customer, restaurant, rating =[0..4], content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content

    @@all << self
  end

def self.customer
  self.all.map do |review|
    review.customer
  end
end

def self.restuarant
  self.all.map do |review|
    review.restaurant
  end
end

def self.rating
  self.all.map do |review|
    review.rating
  end
end

def self.content
  self.all.map do |review|
    review.content
  end
end




end
