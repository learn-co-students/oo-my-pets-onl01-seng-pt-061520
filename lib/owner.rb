class Owner
  attr_reader :species, :name
  attr_accessor :pets
  @@all = [ ]
  @@pets = {:dogs => [], :cats => []}

  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def pets
    @@pets
  end

  def cats
    Cat.all.select {|cat| cat.owner == self}
    
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat (cat)
    @@pets[:cats] << Cat.new(cat, self)
  end

  def buy_dog (dog)
    @@pets[:dogs] << Dog.new(dog, self)
  end

  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    Cat.all.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    Dog.all.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    
  end

  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end



end