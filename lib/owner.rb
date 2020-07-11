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
    
  end
  
  
end