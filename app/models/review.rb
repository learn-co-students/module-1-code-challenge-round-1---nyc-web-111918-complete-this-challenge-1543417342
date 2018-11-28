class Review

  attr_reader :restaurant_name, :rating_score, :the_review
 attr_accessor :customer_name
  @@all = []

# Review.all returns all review instances
  def self.all
    @@all
  end

## Class Methods above
## --------------->
##  initialize and instance methods below

    def initialize(restaurant_name, customer_name, rating_score,the_review)
      @restaurant_name = restaurant_name
      @customer_name = customer_name
      @rating_score = rating_score
      @the_review = the_review

      @@all << self
    end

    #returns cust for a review
    def customer
      self.customer_name
    end

    def restaurant
      self.restaurant_name
    end

    def rating
      self.rating_score
    end

    def review
      self.the_review
    end

end #End of review class


#deliverables

#
# - `Review.all`
#   - returns all of the reviews
# done

# - `Review#customer`
#   - returns the customer object for that given review
#   - Once a review is created, I should not be able to change the author
#done accessor for customer_name

# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, I should not be able to change the restaurant
#attr_reader
# - `Review#rating`
#   - returns the star rating for a restaurant. This should be an integer from 1-5
#done
# - `Review#content`
#   - returns the review content, as a string, for a particular review
# done
# ---
