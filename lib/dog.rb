class Dog
  # code goes here
  def initialize(name, owner)
    @name = name
    @owner = owner #Owner.new(owner.name)
    @mood = "nervous"
    @@all << self
  end

  @@all = []

  attr_accessor :owner, :mood
  attr_reader :name

  def self.all
    @@all
  end

end
