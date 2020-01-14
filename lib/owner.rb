#An Owner will know about all their pets
# be able to buy a pet
#change a pet's mood through walking/feeding it, 
# sell all of their pets 
require 'pry'
class Owner
  attr_accessor :cat, :dog, :pets
  attr_reader :name, :species
  @@all = []
  @pets = {:cats => [], :dogs => []}
 
  
  def initialize(name, species="human")
    @name = name
    @species = species
    @pets = pets
    @@all << self
  end
  
  def say_species
     "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    cat = Cat.new(name, self)
    cat
  end
  
   def buy_dog(name)
    dog = Dog.new(name, self)
    dog
  end
  
  def walk_dogs
    Dog.all.each{|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    Cat.all.each{|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    pets.each{|category, pet| 
  end
  
  def list_pets
    "I have #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end