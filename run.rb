require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

Cool_Zoo = Zoo.new("Cool Zoo","Houston")
Houston_Zoo = Zoo.new("Houston Zoo","Houston")
Poo_Zoo = Zoo.new("Poo Zoo","Dallas")

Bob = Animal.new("Bob","Dog",10)
Bob.zoo = Poo_Zoo

Joe = Animal.new("Joe","Cat",8)
Joe.zoo = Poo_Zoo

Phil = Animal.new("Phil","Rat",2)
Phil.zoo = Poo_Zoo

Lio = Animal.new("Lio","Lion",300)
Lio.zoo = Houston_Zoo

Jeremy = Animal.new("Jeremy","Giraffe",300)
Jeremy.zoo = Houston_Zoo

Leona = Animal.new("Leona","Lion",250)
Leona.zoo = Houston_Zoo

Simba = Animal.new("Simba","Lion",70)
Simba.zoo = Houston_Zoo

Drake = Animal.new("Drake","Dragon",1000)
Drake.zoo = Cool_Zoo

Mythic = Animal.new("Mythic","Unicorn",300)
Mythic.zoo = Cool_Zoo




binding.pry
puts "done"
