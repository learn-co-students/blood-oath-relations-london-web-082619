require_relative '../config/environment.rb'
require 'faker'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


3.times do
  Cult.new(Faker::Creature::Cat.name + "Cult", Faker::Movies::HarryPotter.location, Faker::Hipster.sentence)
end

4.times do
  Follower.new(Faker::Creature::Horse.name, rand(1..100), Faker::Movies::HarryPotter.quote)
end

10.times do
  BloodOath.new(Cult.all.sample, Follower.all.sample)
end

cult1 = Cult.all.first
follower1 = Follower.all.first
blood_oath1 = BloodOath.all.first

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
