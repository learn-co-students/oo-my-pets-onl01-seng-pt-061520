

class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  
  @@all = []
  

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    @@all = []
  end

  def cats
    Cat.all.select {|cats| cats.owner == self}
  end

  def dogs
    Dog.all.select {|dogs| dogs.owner == self}
  end

  def buy_cat(cat)
    Cat.new(cat, self)
  end

  def buy_dog(dog)
    Dog.new(dog, self)
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.cats.each do |cat|
      self.cats.delete(cat)
      cat.mood = "nervous"
      cat.owner = nil
    end	 
    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.mood = "nervous"
      dog.owner = nil
    end
  end

  def list_pets
    dog_count = self.dogs.count
    cat_count = self.cats.count

   "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end 


