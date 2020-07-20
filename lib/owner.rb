class Owner

  attr_reader :species, :name
  attr_accessor :pets

  @@all = []
  @@owners = []
  @@pets = { :cats => [], :dogs=> []}


  def initialize(name)
   @name = name 
   @species = "human" 
  @@owners << self
  save

  end 
  
  def say_species
     "I am a #{@species}."
  end 

  def save
    @@all << self
  end 

  def self.all 
    @@all << self 
  end 
  
  def self.count
    @@owners.length 
  end 

  def self.reset_all
    @@owners = []
  end 

  def pets 
    @@pets
  end 

  def cats
    Cat.all.select {|cats| cats.owner == self}
  end

  def dogs 
    Dog.all.select {|dogs| dogs.owner == self}
  end 

  def buy_cat(cat)
    @@pets[:cats] << Cat.new(cat, self)
  end 

  def buy_dog(dog)
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

