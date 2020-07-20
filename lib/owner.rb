class Owner
  # code goes here
  attr_reader :name, :species

 @@all = []

 def initialize(name)
   @name = name
   @species = "human"
   @@all << self
 end

 def say_species
   "I am a #{self.species}."
 end
 def self.all
   @@all
 end
 def self.count
   self.all.count
 end
 def self.reset_all
  self.all.clear
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
  self.dogs.each {|dog| dog.mood = "happy"}
end
def feed_cats
  self.cats.each { |cat| cat.mood = "happy" }
end
def sell_pets
  all_pets = self.cats + self.dogs
       all_pets.each do |pet|
         pet.mood = "nervous"
         pet.owner = nil
end
def list_pets
 dogs = self.dogs.count
 cats = self.cats.count
  return "I have #{dogs} dog(s), and #{cats} cat(s)."
end
end

end
