class Owner
  # code goes here
  attr_accessor :name,:species

 @@all = []
 def initialize (name)
   @name = name
   @mood = "nervous"
   @@all << self
   @species="human"
   @@all << self
 end

 def say_species
   self.species
 end

 def self.all
   @@all
 end

 def self.count
    self.all.count
 end

 def self.reset_all
   self.all.clear
 end
end
