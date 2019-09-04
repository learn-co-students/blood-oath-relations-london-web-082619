require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#(name,founding_year,slogan,location)

c1 = Cult.new("Gamer", 1980,"Preach", "Uk")
c2 = Cult.new("Stoner",1970,"Hail", "Nepal")
c3 = Cult.new("Homer", 1975,"Bail", "Holland")
c4 = Cult.new("Donor", 1985, "Sail","Usa")

f1 = Follower.new("Nerds", 18)
f2 = Follower.new("Losers",19)
f3 = Follower.new("Introvert",20)
f4 = Follower.new("Kind", 23)


b1 = Bloodoath.new(c1, f1)
b2 = Bloodoath.new(c1, f2)
b3 = Bloodoath.new(c3, f3)
b4 = Bloodoath.new(c4, f4)




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
