class Dog
  attr_accessor :name
  attr_reader :mood

 @@dogs = [ ]

  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @owner = owner
  end

end
