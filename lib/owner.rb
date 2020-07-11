class Owner
  
  attr_reader :name, :species
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end
  
  def say_species
    puts "I am a #{@species}"
  end
  
  def self.all
    @@all
  end
  
  def self.count
    all.count
  end
  
  def self.reset_all
    all.clear
  end
  
  def cats
    Cat.all.select{|c| c.owner == self}
  end
  
  def dogs
    Dog.all.select{|d| d.owner == self}
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each{|d| d.mood = "happy"}
  end
  
  def feed_cats
    cats.each{|c| c.mood = "happy"}
  end
  
  def sell_pets
    cats.each do |c|
      c.mood = nervous
      c.owner = nil
  end
    dogs.each do |d|
      c.mood = nervous
      c.owner = nil
  end

  def list_pets
    "I have #{dogs.count} "
    end
  end
end