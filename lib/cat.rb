class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  @@catall = []

  def initialize (name, owner = self)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@catall << self
  end

  def self.all
    @@catall
  end



end