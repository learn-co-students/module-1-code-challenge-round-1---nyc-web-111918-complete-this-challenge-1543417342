class Review
  @@all = []
  def self.all
    @@all
  end

  attr_reader :customer, :restaurant, :rating, :content

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
    @@all << self
  end

  def find_review
    Review.all.select{|review| review == self}
  end

  def customers
    find_review.map{|instance| instance.customer}
     #binding.pry
   end

   def restaurants
     find_review.map{|instance| instance.restaurant}
      #binding.pry
    end

    def ratings
      find_review.map{|instance| instance.rating}
       #binding.pry
     end


     def contents
       find_review.map{|instance| instance.content}
        #binding.pry
      end
end
