require 'pry'

class Animal
  attr_reader :species, :nickname, :weight, :zoo
  @@all = []
  def initialize(weight, species, nickname, zoo)
    @weight = weight
    @species = species
    @nickname = nickname
    @zoo = zoo
    @@all << self
  end
  def weight=(weight)
    @weight = weight
  end
  def all=(all)
    @@all = all
  end
  def self.all
    @@all
  end
  def find_by_species(animal)
    Animal.all.select do |x|
       x
    end
  end
end
# Zebra = Animal.new(120, "Zebra", "Stripey", "H")
# # Fred = Animal.new(140, "Zebra", "bob")
# # John = Animal.new(180, "Tiger", "Killer")
# # Zebra.find_by_species("Zebra")
# # puts Zebra.find_by_species("Zebra")
# puts Zebra.all
# #binding.pry
