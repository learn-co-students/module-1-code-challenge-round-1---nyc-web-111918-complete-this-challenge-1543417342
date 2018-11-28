class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.find_by_name(name)
    #split name
    name_array = name.split(' ')
    first_name = name_array[0]
    last_name = name_array[-1]
    Customer.find_all_by_first_name(first_name).select do |customer|
      customer.last_name == last_name
    end
  end

  def self.all_names
    Customer.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    #order for creating new review rating, content, customer, restaurant
    Review.new(rating, content, self, restaurant)

  end

  #helper method to find all reviews
  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
      restaurant_array = self.reviews.map do |review|
        review.restaurant
      end
      restaurant_array.uniq

  end

  def num_reviews
    self.reviews.size
  end
end
