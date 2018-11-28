class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def self.find_by_name(name)
    #given string of restaurant name
    #returns first restaurant INSTANCE that matches

    @@all.select {|restaurant| restaurant.name == name}

  end

  def customers
    #returns uniq customers of restaurant
    #instance method
    #must go through reviews
    #my_reviews = Review.all.select {|review| review if review.restaurant == self}
    my_customers = reviews.map {|review| review.customer}
    my_customers.uniq

    #right now it returns the review, not the customer
  end

  def reviews
    Review.all.select {|review| review if review.restaurant == self}
  end

  def average_star_rating
    #the average star rating for a restaurant based
    #on its reviews
    sum = 0
    my_ratings = reviews.map{|review| review.rating}
    my_ratings.each {|rating| sum+= rating}
    sum.to_f/reviews.count

  end

  def longest_review

    #search through reviews
    #select reviews where review.restaurant == self

    #set variable to reassign -
    #
    #from here, iterate review.content

    #long_review = nil
    #longest_content = nil

    #contents = reviews.map {|review| review.content}
    #content.each do |content|
    #  if content.length > longest_content
    #    longest_content = content.length
    #    long_review = review
    #  end
    #end

    #could try sorting by content length
    #reviews.sort_by{|review| review.content.length}[-1]

    #another option that works!
    reviews.max_by{|review| review.content.length}


  end

end
