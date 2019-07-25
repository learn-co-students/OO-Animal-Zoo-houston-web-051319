require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

elephant = "Elephant"
monkey = "Monkey" 
eagle = "Eagle"
tiger = "Tiger"

houston = Zoo.new("Houston_Zoo", "Houston")
austin = Zoo.new("Austin_Zoo", "Austin")
new_york = Zoo.new("New_York_Zoo", "New_York")

bob = Animal.new(elephant, 500, "Bob", houston)
joe = Animal.new(monkey, 50, "Joe", houston)
susan = Animal.new(eagle, 20, "Susan", new_york)
jill = Animal.new(tiger, 300, "Jill", austin)
billy = Animal.new(elephant, 400, "Billy", new_york)
william = Animal.new(tiger, 60, "William", houston)
racquel = Animal.new(monkey, 10, "Racquel", new_york)
jack = Animal.new(elephant, 320, "Jack", austin)



#Test your code here


binding.pry
puts "done"
