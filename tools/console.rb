require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
names = ["Matt", "Bill", "Boris", "Germaine", "Louis", "Sam", "Jessica", "Michelle"]
life_mottos = ["When life gives you lemons... launch a nuke", "Respect", "Give up all hope."]

cult_names = ["Free World", "Armagedon.Ltd", "Stone Age", "The Salvation Army"]
locations = ["Chester", "New York", "London", "Hull", "Atlantis"]
slogans = ["Infect everyone", "Death to kittens", "Guns Save Lives"]

def age
  rand(10..60)
end

follower1 = Follower.new("Follower 1", 16, life_mottos.sample)
follower2 = Follower.new("Follower 2", 27, life_mottos.sample)
follower3 = Follower.new("Follower 3", 15, life_mottos.sample)
follower4 = Follower.new("Follower 4", 900, life_mottos.sample)
follower5 = Follower.new("Follower 5", 57, life_mottos.sample)
follower6 = Follower.new("Follower 6", 42, life_mottos.sample)
follower7 = Follower.new("Follower 7", 18, life_mottos.sample)
follower8 = Follower.new("Follower 8", 17, life_mottos.sample)
follower9 = Follower.new("Follower 9", 88, life_mottos.sample)
follower10 = Follower.new("Follower 10", 33, life_mottos.sample)
follower11 = Follower.new("Follower 11", 12, life_mottos.sample)

cult1 = Cult.new("Test Cult 1", locations.sample, 1999, slogans.sample)
cult2 = Cult.new("Test Cult 2", locations.sample, 2015, slogans.sample)
cult3 = Cult.new("Test Cult 3", locations.sample, 2018, slogans.sample)

oath1 = cult1.recruit_follower(follower1)
oath2 = cult1.recruit_follower(follower3)
oath3 = cult1.recruit_follower(follower4)
oath4 = cult2.recruit_follower(follower1)
oath5 = cult2.recruit_follower(follower2)
oath6 = cult3.recruit_follower(follower3)
oath7 = cult3.recruit_follower(follower4)

oath8 = follower5.join_cult(cult1)
oath9 = follower6.join_cult(cult2)
oath10 = follower7.join_cult(cult2)
oath11 = follower8.join_cult(cult1)
oath12 = follower9.join_cult(cult3)
oath13 = follower10.join_cult(cult1)
oath14 = follower11.join_cult(cult2)


binding.pry
0
