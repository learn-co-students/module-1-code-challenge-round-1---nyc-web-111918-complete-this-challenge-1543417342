class Review

  attr_reader :rating, :content, :customer, :restaurant

  @@all = []

  def initialize(rating, content, customer, restaurant)

      if rating > 5
        rating = 5
      elsif rating < 0
        rating = 0
      end
    @rating = rating
    @content = content
    @customer = customer
    @restaurant = restaurant

    @@all << self
  end

  def self.all
    @@all
  end

end
