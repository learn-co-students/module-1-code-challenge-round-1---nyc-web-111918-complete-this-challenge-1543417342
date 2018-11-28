require 'pry'
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(first)
    Customer.all.find do |customers|
      customers.first_name == first
    end
  end

  def self.find_all_by_first(first)
    Customer.all.select do |customers|
      customers.first_name == first
    end
  end

  def self.all_names
    all = []
    Customer.all.each do |customers|
      # binding.pry
      all << "#{customers.first_name} #{customers.last_name}"
    end
    all
  end
## Class Methods above
## --------------->
##  initialize and instance methods below

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  ###helper method
  def reviews
    Review.all.select do |reviews|
      reviews.customer_name == self
    end
  end


  def add_review(restaurant,content,rating)
    Review.new(restaurant,self,content,rating)
  end

  def num_reviews
    reviews.length
  end

  def restaurants
    all = []
    reviews.each{|a_review| all << a_review.restaurant_name}
    # binding.pry
    all.uniq!
    all
  end

end


#Deliverables
# - `Customer.all`
#   - should return **all** of the customer instances
#done
# [3] pry(main)> Customer.all
# => [#<Customer:0x007fac092073f0 @first_name="Josh", @last_name="Cocciardi">,
#  #<Customer:0x007fac09207378 @first_name="Mike", @last_name="Cheng">,
#  #<Customer:0x007fac09207300 @first_name="Chris", @last_name="Metzger">]
# [4] pry(main)>


# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
#
#Done
#- `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
#Done
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names
# done
