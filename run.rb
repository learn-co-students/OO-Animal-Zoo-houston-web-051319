require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here


zoo_one = Zoo.new('Houston Zoo', 'H-town')
zoo_two = Zoo.new('Austin Zoo', 'A-town')
zoo_three = Zoo.new('Austin Zoo Two', 'A-town')


animal_one = Animal.new('mountain lion', 130, 'hell raiser', zoo_one)
animal_two = Animal.new('timber wolf', 150, 'moon howler', zoo_one)
animal_three = Animal.new('dolphin', 900, 'flipper', zoo_two)
animal_four = Animal.new('bear', 750, 'the mountain', zoo_two)
animal_five = Animal.new('bear', 850, 'behemoth', zoo_two)





binding.pry

puts "done"
