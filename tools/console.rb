require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
names = ["Steve", "Tony", "Bruce", "Clint", "Thor", "Loki", "Wanda", "Natasha", "Vince", "Nick", "Alice", "Roy", "Herschel", "Mary", "Chad", "Alice"]
life_mottos = ["Why so serious?", "Wakanda Forever", "Come to me, son of Jor-El. Kneel before Zod!", "Do your best", "Hit and get hit", "Khaaaaaaaaaaaan!", "Earl grey, hot.", "Make it so"]
cult_names = ["Avengers", "Fantastic Four", "X-Men", "The Boys", "Justice League", "X Force" "The Salvation Army", "Revengers"]
locations = ["Asguard", "New York", "Alberque", "Grimsby", "Midguard"]
slogans = ["I am the vengeance, I am the night, I am BATMAN!", "With great power, comes great responsibility.", "Don't make me angry, you wouldn't like me when I'm angry", "You were made to be ruled. In the end, you will always kneel.", "Have you ever danced with the devil in the pale moonlight?", "You are a god among insects. Never let anyone tell you different.", "We are the future. Not them. They no longer matter."]

follower1 = Follower.new(names.sample, rand(12..80), life_mottos.sample)
follower2 = Follower.new(names.sample, rand(12..80), life_mottos.sample)
follower3 = Follower.new(names.sample, rand(12..80), life_mottos.sample)
follower4 = Follower.new(names.sample, rand(12..80), life_mottos.sample)
follower5 = Follower.new(names.sample, rand(12..80), life_mottos.sample)
follower6 = Follower.new(names.sample, rand(12..80), life_mottos.sample)
follower7 = Follower.new(names.sample, rand(12..80), life_mottos.sample)
follower8 = Follower.new(names.sample, rand(12..80), life_mottos.sample)
follower9 = Follower.new(names.sample, rand(12..80), life_mottos.sample)
follower10 = Follower.new(names.sample, rand(12..80), life_mottos.sample)
follower11 = Follower.new(names.sample, rand(12..80), life_mottos.sample)

cult1 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult2 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult3 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult4 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult5 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult6 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult7 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult8 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult9 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult10 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult11 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult12 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult13 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)
cult14 = Cult.new(cult_names.sample, locations.sample, rand(1283..2019), slogans.sample)

cult1.recruit_follower(follower1)
cult1.recruit_follower(follower2)
cult1.recruit_follower(follower3)
cult1.recruit_follower(follower4)
cult1.recruit_follower(follower5)
cult1.recruit_follower(follower6)
cult2.recruit_follower(follower7)
cult2.recruit_follower(follower8)
cult2.recruit_follower(follower9)
cult2.recruit_follower(follower10)
cult2.recruit_follower(follower11)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
