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

10.times { Follower.new(names.sample, rand(12..80), life_mottos.sample) }
10.times { Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample) }


test_follower = Follower.all.sample
test_cult = Cult.all.sample

10.times { test_cult.recruit_follower(Follower.all.sample) }
p BloodOath.all


