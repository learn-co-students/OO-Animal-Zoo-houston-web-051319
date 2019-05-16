class Animal
    #getter for species and nickname
    attr_reader :species, :nickname
    # array holding all the Animal Objects
    @@all = []
    # consturctor for animal objects
    def initialize (species,weight,nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        
        @@all << self
    end
    # getter for current zoo
    def zoo
        @zoo
    end
    # setter for current zoo
    def zoo=(zoo)
        @zoo=zoo
    end
    # getter for weight
    def weight
        @weight
    end
    # setter for weight
    def weight=(weight)
        if weight>=0
            @weight = weight
        end
    end
    # getter for every animal object
    def self.all
        @@all
    end
    # returns all the animals of a spefic species
    def self.find_by_species(species)
        self.all.select do |animal|
            animal.species==species
        end
    end
    
end
