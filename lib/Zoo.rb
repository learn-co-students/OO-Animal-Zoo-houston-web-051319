class Zoo
    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def location
        @location
    end

    def name
        @name
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
        list = self.animals.map do |animal|
            animal.species
        end
        list.uniq
    end

    def animal_nicknames
        list = self.animals.map do |animal|
            animal.nickname
        end
    end

    def self.find_by_location(location)
        self.all.select do |zoo|
            zoo.location == location
        end
    end
end
