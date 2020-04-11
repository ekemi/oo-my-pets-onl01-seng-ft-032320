require "pry"
class Owner
  # code goes here
  attr_reader :name,:species

 @@all = []
 def initialize (name)
   @name = name
   @mood = "nervous"
   @@all << self
   @species="human"
 end

 def say_species
   return "I am a #{self.species}."
 end

 def self.all
   @@all
 end

 def self.count
    self.all.count
    #binding.pry
 end

  def self.reset_all
    self.all.clear
  end
  def cats
   Cat.all.select{|cat|cat.owner == self}
   #binding.pry
 end
 def dogs
   Dog.all.select{|dog|dog.owner == self}
 end
 def buy_cat(name)
  Cat.new(name,self)
 end

 def buy_dog(name)
   Dog.new(name, self)
 end
 def walk_dogs
   Dog.all.each{|dog| dog.mood = "happy"}
 end
 def feed_cats
 Cat.all.each{|cat| cat.mood ="happy"}
 end
 def sell_pets

   pets = self.dogs + self.cats

     pets.each do |pet|
         pet.mood = "nervous"
         pet.owner = nil
    end
 end
 def list_pets
   return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)"
 end
 end
