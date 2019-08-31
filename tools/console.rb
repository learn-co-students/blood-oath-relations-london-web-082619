require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult_names = ["Devil's Angels", "The One True Zodiac", "Chris Pratt is God", "Band of Origins", "Creed of the True Emperor",
  "Band of Secrets", "Apple", "Nike", "Loreal", "Communion of Oleesm"]

cult_locations = ["London", "Dubai", "Birmingham", "Glasgow", "Ibiza", "Osaka", "Helsinki", "Budapest", "Leeds"]

founding_year = Array(1995..2019)

slogan = ["No one does like us", "Join the resistance", "You're worth it", "Just do it", 
  "Think differently", "For the many, not the few", "Let's get paaaaaaid"]

follower_names = ["Steve", "James", "Alex", "Louise", "Ava", "Adam", "Gregory", "Toby", "Mark"]

ages = Array(11..40)
  
motto = ["I'm an idiot", "Global warming isn't real", "I am the chosen one", "Here for free pizza", "What even is a cult?",
    "Rapture is coming", "Can't stop won't stop", "Have you heard of our lord and saviour Chris Pratt?", "Bubbbbleessss"]
  

20.times do
    cult = Cult.new(cult_names.sample, cult_locations.sample, founding_year.sample, slogan.sample)
        rand(100).times do
            follower = Follower.new(follower_names.sample, ages.sample, motto.sample)
            cult.recruit_follower(follower)
        end
end

binding.pry
puts "Mwahahaha!" # just in case pry is buggy and exits
