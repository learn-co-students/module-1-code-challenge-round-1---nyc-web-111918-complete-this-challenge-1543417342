class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

    #returns an array of all restaurants
  def self.all
    @@all
  end

  #returns first restaurant that matches string passed in
  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  #ran out of time, was going to write helper method to
  #connect the customer to restaurant through review

end
