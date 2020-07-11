class Owner
  
  attr_reader :name, :species

  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end

  def say_species
    "I am a #{@species}."
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
    # Dog.all.each{|d| d.mood = "happy"} changes all dogs moods, not a particular owner"s dog
    dogs.each{|d| d.mood = "happy"}
  end

  def feed_cats
    # Cat.all.each{|c| c.mood = "happy"} changes mood for all cats, not a particular owner's
    cats.each{|c| c.mood = "happy"}
  end

  def sell_pets
    # Cat.all.each do |c|
    cats.each do |c|
      c.mood = "nervous"
      c.owner = nil
    end
    # Dog.all.each do |d|
    dogs.each do |d|
      d.mood = "nervous"
      d.owner = nil
    end

    def list_pets
      "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
    end
  end

end