class Animal    

    @@animals = []
    
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@animals << self
    end

    #Getters

        def species
            @species
        end

        def weight
            @weight 
        end

        def nickname
            @nickname
        end

        def zoo
            @zoo
        end

    #End of Getters

    #Setters

        # def species=(species)
        #     @species=species
        # end

        def weight=(weight)
            if weight > 0
                @weight=weight
            else
                puts "Input a weight greater than zero"
            end
        end

        # def nickname=(nickname)
        #     @nickname=nickname
        # end

        def zoo=(zoo)
            @zoo=zoo
        end
    
    #End of Setters
    

    def self.all
        @@animals
    end

    def self.find_by_species(species)
        Animal.all.select do | animal |
            animal.species == species
        end
    end


end

