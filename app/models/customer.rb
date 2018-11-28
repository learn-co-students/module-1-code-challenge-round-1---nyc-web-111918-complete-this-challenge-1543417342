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


  def self.find_by_name(name)
    #given a FULL NAME and Returns
    #the first customer whose full name matches
    name_array = name.split
    @@all.find do |customer|
      name_array[0] == customer.first_name && name_array[1] == customer.last_name
    end
  end

  def self.find_all_by_first_name(name)
    #given a string of a first name
    #returns an array containing all customers with
    #that first name

    #use select!
    @@all.select {|customer| customer.first_name == name}

  end

  def self.all_names
    #returns array of all customer full names
    # use the method full_name
    #iterate over all
    @@all.map {|customer| customer.full_name}
  end

                #customer, restaurant, content, rating
  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end


  def num_reviews
    Review.all.select {|review| review if review.customer == self}
  end

  def restaurants
    #returns uniq! array (select) of all restaurants a customer has reviewed
    reviews = Review.all.select {|review| review if review.customer == self}
    reviews.map {|review| review.restaurant}.uniq!

  end
end

#DONE - REFACTOR IF TIME
