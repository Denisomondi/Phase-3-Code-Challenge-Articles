require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#creating author instances
author1 = Author.new("John Doe")
author2 = Author.new("Denis Odimo")
author3 = Author.new("Pearson Hardman")
author4 = Author.new("Mike Slinger")
author5 = Author.new("John Wick")
author6 = Author.new("William Levi")

#creating magazine instances
magazine1 = Magazine.new("Articles without -AR")
magazine2 = Magazine.new("The Tribe")
magazine3 = Magazine.new("Campo Yangu")
magazine4 = Magazine.new("Flatiron School")
magazine5 = Magazine.new("Moringa School")
magazine6 = Magazine.new("Hustler Nation")
magazine7 = Magazine.new("A dive into the Dome")
magazine8 = Magazine.new("Fringe")