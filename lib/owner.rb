class Owner
attr_accessor :cats, :dogs
@@all = []
def initialize(name)
  @name = name
  @name.freeze
  @@all << self
  @species = "human"
  @cats = []
  @dogs = []

end
# def name=(name)
#   @name = name
#   @name.freeze
#   @@all << self
# end
def name
  @name
end
def species
  @species
end
def say_species
   "I am a #{@species}."
end

def self.all
  @@all
end
def self.count
  @@all.count
end
def self.reset_all
  @@all.clear
end
def buy_cat(name)
  cat = Cat.new(name, self)
  @cats << cat
end
def buy_dog(name)
  dog = Dog.new(name, self)
  @dogs << dog
end
#   it "walks the dogs which makes the dogs' moods happy" do
#     dog = Dog.new("Daisy", @owner)
#     @owner.walk_dogs
#     expect(dog.mood).to eq("happy")
#   end
# end

def walk_dogs
  self.dogs.each do |dog|
    Dog.walk_dogs
  end
end



end
