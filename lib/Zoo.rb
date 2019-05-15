class Zoo
    attr_reader :name, :location

    @@all = []

    def initialize(name,location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species
        species = self.animals.collect do |animal|
            animal.species
        end
        species.uniq
    end

    def find_by_species(species_needed)
        self.animals.select do |animal|
            animal.species == species_needed
        end
    end

    def animal_nicknames
        self.animals.collect do |animal|
            animal.nickname
        end
    end

    def self.find_by_location(location_needed)
        Zoo.all.select do |zoo|
            zoo.location == location_needed
        end
    end

end
