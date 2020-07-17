require 'pry'
class Owner
  # code goes here
  @@all = []
  attr_accessor
  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
    
    save
    # raise NoMethodError if @name != name
  end
  
  def save
    @@all << self
  end 
  
  def say_species
   return "I am a #{@species}." 
  end
  
  def self.all 
    @@all
    # binding.pry
  # Owner.each {|o| puts self}
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end 
    
  def cats 
    # Owner::Cats
   Cat.all.select{|cats| cats.owner == self}
  end
  
  def dogs 
    Dog.all.select{|dogs| dogs.owner == self}
  end
  
  def buy_cat(cat_name)
    cat_name = Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    dog_name = Dog.new(dog_name, self)
    # binding.pry
  end
  
  def walk_dogs
    Dog.all.each do |dog|
      if dog.owner == self
        dog.mood = "happy"
      end
    end
  end
  
 def feed_cats
    Cat.all.each do |cat|
      if cat.owner == self
        cat.mood = "happy"
      end
    end
  end
  
  def sell_pets
    pets = self.dogs + self.cats #using the + to combing dogs and cats to equal to pets instance variable
    #iterate through pets to set their mood to nervous and their owner to be nil or no owner
    pets.each do |i|
      i.mood = "nervous"
      i.owner = nil
    end
  end 
  # def list_pets
  #   pets = self.dogs + self.cats
  #   pets.each do 
  # end
  
  def list_pets
    list = "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
    list
    #wow what the heck list will just do as it's told like this!
  end
end