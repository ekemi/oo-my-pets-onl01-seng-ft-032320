class Cat
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []
  def initialize(name, owner)
    @cat = cat
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  def self.all
     @@all
  end
end
