class Cat
 attr_accessor :mood
 attr_reader :name

 @@cats = []

 def initialize(name, owner)
   @name = name
   @mood = "nervous"
   @owner = owner
 end

end
