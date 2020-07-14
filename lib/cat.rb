class Cat
  attr_reader :name
  attr_accessor :mood, :owner
  @@all = []

 def initialize (name,owner)
  @name = name
  @owner = owner
  @@all << self
  @mood = "nervous"
  owner.cats << self
 end

 def self.all
  @@all
 end

end