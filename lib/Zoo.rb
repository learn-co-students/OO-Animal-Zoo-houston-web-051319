require './lib/Animal.rb'
require 'pry'
class Zoo
  def self.find_by_location(city)     #class method .self
    Zoo.all.select do |zoo|
      zoo.location == city
    end
  end
  attr_reader :name, :location
  @@all = []
  def initialize(name, location)
    #@name = name
    @location = location
    @@all << self
  end
  def all=(all)
    @@all = all
  end
  def self.all
    @@all
  end
  def animals
    Animal.all.select do |animal_obj|
      animal_obj.zoo == self
    end
  end
  def animal_species
    unique_array = []
    all_animals = Animal.all.select do |animal_obj|
      animal_obj.zoo == self
    end
    all_animals.map do |animal_obj|
      unique_array << animal_obj.species
    end
    unique_array.uniq
  end
  def find_by_species(animal)
    species_array = []
    all_animals = Animal.all.select do |animal_obj|
      animal_obj.zoo == self
    end
    all_animals.each do |animal_obj|
      if animal_obj.species == animal
        species_array << animal_obj
      end
    end
    species_array
  end
  def animal_nicknames
    nick_name = Animal.all.select do |animal_obj|
      animal_obj.zoo == self
    end
    nick_name.map do |animal_obj|
      animal_obj.nickname
    end
  end
end





#binding.pry
