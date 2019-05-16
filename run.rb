require 'pry'
require './lib/Zoo.rb'
require './lib/Animal.rb'

H_zoo = Zoo.new("Houston Zoo", "Houston")
Other_zoo = Zoo.new("Dallas Zoo", "Dallas")
Animal.new(120, "Zebra", "Stripey", H_zoo)
Animal.new(140, "Buffalo", "Horney", H_zoo)
Animal.new(190, "Buffalo", "Wooly", Other_zoo)
binding.pry
