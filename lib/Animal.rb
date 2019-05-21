class Animal

    attr_reader :specie, :nickname
    attr_accessor :weight

    @@all_animals = []

    def initialize (specie, weight, nickname, zoo)
        @specie = specie
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all_animals << self
    end

    


end
