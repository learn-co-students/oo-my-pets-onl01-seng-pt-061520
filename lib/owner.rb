require "pry"
class Owner
  # code goes here
  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
  end

  @@owners = []

  def name

  end

  attr_reader :name, :species

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    #reset the owners that have been created
    @@owners.clear
  end

  def cats
    Cat.all.select {|cat| cat.owner = self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner = self}
  end

  def buy_cat(cat)
    cat = Cat.new(cat, self)
    # Cat.all.select {|cat| cat.name == name}
    # binding.pry
    #init with owner
    #changes their mood
    #knows about its cats
  end

  def buy_dog(name)
    name = Dog.new(name, self)
    #init with owner
    #changes their mood
    #knows about its dogs
  end

  def walk_dogs
    Dog.all.each do |dog|
      if dog.owner = self
        dog.mood = "happy"
      end
    end
  end

  def feed_cats
    #makes the cats' mooods happy
    Cat.all.each do |cat|
      if cat.owner = self
        cat.mood = "happy"
      end
    end
  end

  def sell_pets
    #can sell all it's pets, makes them nervous
    #can sell all its pets --> without an owner
    # Cat.all.each do |cat|
    #   if cat.owner = self
    #     cat.mood = "nervous"
    #     # binding.pry
    #     cat.owner = nil
    #     binding.pry
    #   end
    # end
    self.cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    # binding.pry
    self.dogs.each do |dog|
      dog.mood = "nervous"
      # dog.owner = nil
    end

  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end


end
