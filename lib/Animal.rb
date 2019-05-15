class Animal
    attr_accessor :weight, :zoo
    attr_reader :species, :nickname
    @@all = []

    def initialize(nickname,species,weight)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species_needed)
        @@all.select do |animal|
            animal.species == species_needed
        end
    end

end
