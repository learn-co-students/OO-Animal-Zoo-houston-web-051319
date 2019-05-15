class Animal
    
    attr_reader :species, :nickname
    @@all = []
    def initialize (species,weight,nickname)
        @species = species
        @weight = weight
        @zoo=nil
        @nickname = nickname
        
        @@all << self
    end
    def zoo
        @zoo
    end
    def zoo=(zoo)
        @zoo=zoo
    end
    def weight
        @weight
    end
    def weight=(weight)
        if weight>=0
            @weight = weight
        else
            @weight = 1
        end
    end
    def self.all
        @@all
    end
    
    def self.find_by_species(species)
        self.all.select do |animal|
            animal.species==species
        end
    end
    
end
