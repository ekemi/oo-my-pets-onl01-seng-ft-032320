class Cat
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []
  def initialize(cat, owner)
    @cat = cat
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
   def self.all
     @@all
   end

      end


    end
  end


    end
end
