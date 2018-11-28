class Restaurant
  @@all = []
  def self.all
    @@all
  end
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
    self.all.find{|restaurant| name == restaurant.name}
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def longest_review
    reviews.max_by{|review| review.content.size}
  end

  def average_star_rating
    total = reviews.map{|review| review.rating}.reduce(:+)
  end

end
