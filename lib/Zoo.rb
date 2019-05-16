class Zoo
    
    @@zoos = []

    def initialize(name, location)
        @name = name
        @location = location
        @@zoos << self

    end

    #Getter

        def name
            @name
        end

        def location
            @location
        end

    #End Getter

    #Setter

        def name=(name)
            @name=name
        end

        def location=(location)
            @location=location
        end

    #End Setter


    def self.all
        @@zoos
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end

    def animal_species
        unique_species = animals.map do |animal|
            animal.species
        end
        unique_species.uniq
    end

    def find_by_species(species)
        Animal.all.select do | animal |
            animal.zoo == self && animal.species == species
        end

    end

    def animal_by_nicknames
        Animal.all.map do |animal|
            animal.nickname
        end
    end

    def self.find_by_location(location)
        self.all.select do | zoo |
            zoo.location == location
        end
    end

end
