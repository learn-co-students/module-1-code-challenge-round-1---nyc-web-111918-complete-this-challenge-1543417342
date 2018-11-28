class Restaurant
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name


    @@all << self
  end


  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name #==  self
      end
    end

    def customers
      Review.all.map do |review|
        review.customer
      end
    end


end
