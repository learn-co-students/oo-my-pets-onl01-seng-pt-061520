class Owner
  # code goes here	  # code goes here
  attr_reader :name, :species

  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self

  end


  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end  

  def say_species
    "I am a #{species}."
  end

  def cats
    Cat.all.select {|cat| cat.owner == self }
  end 

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end



  def buy_cat(name)
     Cat.new(name, self)
  end

  def buy_dog(name)
   Dog.new(name, self)
  end

  def walk_dogs()
    Dog.all.each {|dog| dog.mood = "happy"}
  end

  def feed_cats()
    Cat.all.each{|cat| cat.mood = "happy"}
  end

  def sell_pets
    cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end

  def list_pets
    num_of_cats = self.cats.size
    num_of_dogs = self.dogs.size
    return "I have #{num_of_dogs} dog(s), and #{num_of_cats} cat(s)."
  end  
end 