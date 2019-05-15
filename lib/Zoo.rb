class Zoo
    attr_reader :name, :location
    @@all=[]
    def self.all
        @@all
    end
    def initialize (name, location)
        @name=name
        @location=location
        @@all << self
    end
    def animals
        Animal.all.select do | animal |
            animal.zoo == self.name
        end
    end
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
    def find_by_species(species)
        animals_in_zoo=self.animals
        animals_in_zoo.select do |animals|
            animals.species==species
        end
    end
    def animal_nicknames
        animals_in_zoo=self.animals
        animals_in_zoo.map do |animals|
            animals.nickname
        end
    end
    def self.find_by_location(location)
        self.all.select do |location_obj|
            location_obj.location == location
        end
    end
    
end
