class Dog
  attr_accessor :owner
  attr_writer :mood
@@all = []
def initialize(name, owner)
  @name = name
  @name.freeze
  @owner = owner
  @@all << name
end
def mood
  @mood
end
def name
  @name
end
def walk_dogs
  # @owner.each do |dog|
   @name.mood = "happy"
    @mood
  # end
end

def self.all
  @@all
end

end
