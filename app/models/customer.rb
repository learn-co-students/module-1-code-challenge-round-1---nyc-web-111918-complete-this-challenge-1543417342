class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def self.all
    @@all
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name) #Customer.find_by_name(name)
  self.all.find do |name|
      name.full_name #== self
    end

  end

  def self.find_all_by_first_name(first_name) #needs to take in a string argument and
    #return the full names that match the first name
    first_array = self.all.map do |name|
      name.first_name == first_name
      end
      
    end

    def self.all_names #customer . all_names
      self.all.map do |customer|
        customer.full_name
      end
    end

    def add_review(restaurant, rating, content)
      Review.new(self,restaurant,rating,content)
    end

    def num_reviews

    end


end #end of customer class
