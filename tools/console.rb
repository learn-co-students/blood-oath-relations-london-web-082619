require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
names = ["Jeffrey", "Charles", "Boris", "Germaine", "Loris", "Cthulhu", "Jessica", "Gadnuk, Breaker Of Worlds"]
life_mottos = ["The thing about hard things is... you just do them", "Don't create armageddon in your own home", "If something is hard, give up and go home"]

cult_names = ["Chanters United", "End of the World, Inc.", "The End Is Nigh TM", "The Salvation Army"]
locations = ["Chester", "New England", "Scunthorpe", "Hull", "Atlantis"]
slogans = ["Hail Satan, then hail again", "Murder reasonably", "Mild massacres only, please", "10,000 years of damnation"]

20.times { Follower.new(names.sample, rand(12..80), life_mottos.sample) }
20.times { Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample) }

follower1 = Follower.new("Follower 1", 16, "Life motto")
follower2 = Follower.new("Follower 2", 27, "Life motto")
follower3 = Follower.new("Follower 3", 15, "asdafdf")
follower4 = Follower.new("Follower 4", 900, "asdafdf")

cult1 = Cult.new("Test Cult 1", "London", "2019", "adfasdfsd", 18)
cult2 = Cult.new("Test Cult 2", "London", "2019", "adfasdfsd")
cult3 = Cult.new("Test Cult 3", "London", "2019", "adfasdfsd", 1000)

cult1.recruit_follower(follower4)
puts cult1.followers()
