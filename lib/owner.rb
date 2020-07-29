
require 'pry'
class Owner
attr_reader :name, :species
attr_accessor :pets 


 @@all = []

def initialize(name)
  @name = name
  @species = "human"
  self.save
  end 

  def say_species 
    "I am a #{@species}."
  
  end 

  def self.all 
    @@all 
  end 

  def save 
    @@all << self
  end 

  def self.count 
    @@all.count
  end 

  def self.reset_all
    @@all.clear
  end 

  def cats 
    Cat.all.select{|cat| self == cat.owner}
  end 

def dogs 
  Dog.all.select{|dog| self == dog.owner}
end 

def buy_cat(name) 
cat = Cat.new(name, self)
end 

def buy_dog(name)
  dog = Dog.new(name, self)
end 

def walk_dogs
  Dog.all.each {|dog| dog.mood = "happy"
  }
end 

def feed_cats 
  Cat.all.each {|cat| cat.mood = "happy"}
end 

def sell_pets
  Cat.all.each do |cat| 
    cat.mood = "nervous"; 
    cat.owner = nil;
  Dog.all.each do |dog|
    dog.mood = "nervous";
    dog.owner = nil;
  end 
end 
end 

def list_pets 
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end 


   
end