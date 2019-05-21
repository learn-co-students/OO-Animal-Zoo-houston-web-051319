require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

houston = Zoo.new("Houston_Zoo", "Houston")
austin = Zoo.new("Austin_Zoo", "Austin")
new_york = Zoo.new("New_York_Zoo", "New_York")

bob = Animal.new("Elephant", 500, "Bob", houston)
joe = Animal.new("Monkey", 50, "Joe", houston)



#Test your code here


binding.pry
puts "done"
