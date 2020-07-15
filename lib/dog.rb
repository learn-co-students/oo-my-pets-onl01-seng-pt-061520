class Dog
  attr_accessor :mood, :owner
  attr_reader :name

  @@dogall = []

  def initialize (name, owner = self)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@dogall << self
  end

  def self.all
    @@dogall
  end

end