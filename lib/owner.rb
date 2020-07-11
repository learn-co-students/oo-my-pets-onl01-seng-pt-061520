class Owner
  
  attr_reader :name, :species
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end
  
  def say_species
    puts "I am #{@"
end