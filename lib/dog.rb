class Dog
  # code goes here
  attr_accessor  :owner, :mood
  attr_accessor :name

  @@all = []


  def initialize (name, owner)

    @name = name
    @mood = "nervous"
   @owner = owner

   @@all << self
  end


  def self.all
    @@all
  end
end
