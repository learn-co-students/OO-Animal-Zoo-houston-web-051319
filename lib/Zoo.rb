class Zoo
    # getter for name and location
    attr_reader :name, :location
    # array that holds every zoo object created
    @@all=[]
    #  getter for every zoo animal object in array
    def self.all
        @@all
    end
    # constructor for zoo object
    def initialize (name, location)
        @name=name
        @location=location
        @@all << self
    end
    # returning every animal object from a specific zoo
    def animals
        Animal.all.select do | animal |
            animal.zoo == self.name
        end
    end
    # returning the unique species in a specified zoo
    def animal_species
        unique_species =[]
        animals_in_zoo=self.animals
        animal_obj =animals_in_zoo.uniq do |animalObject|
            animalObject.species
        end
        animal_obj.each do | objects |
            unique_species << objects.species
        end
        unique_species
    end
    # returns all the animal objects of a specific zoo and species
    def find_by_species(species)
        animals_in_zoo=self.animals
        animals_in_zoo.select do |animals|
            animals.species==species
        end
    end
    # returns all animals from a specific zoo with a specific nickname
    def animal_nicknames
        animals_in_zoo=self.animals
        animals_in_zoo.map do |animals|
            animals.nickname
        end
    end
    # returns all the zoo objects that are within the specific location
    def self.find_by_location(location)
        self.all.select do |location_obj|
            location_obj.location == location
        end
    end
    
end
