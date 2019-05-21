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
        



end
