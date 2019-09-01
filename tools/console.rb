require_relative '../config/environment.rb'
require 'date'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("Cult 1", "New York", 1936, "Squashy armchairs dirt on your nose brass scales")
cult2 = Cult.new("Cult 2", "London", 1806, "Thestral dirigible plums, Viktor Krum hexed memory")
cult3 = Cult.new("Cult 3", "London", 1386, "Thestral dirigible plums, Viktor Krum hexed memory")

names = ["Harry", "Ron", "Hermione", "Dumbledore", "Snape", "Luna"]
mottos_s = "Squashy armchairs dirt on your nose brass scales crush the Sopophorous bean with flat side of silver dagger, releases juice better than cutting. Full moon Whomping Willow three turns should do it lemon drops. Locomotor trunks owl treats that will be 50 points, Mr Potter. Witch Weekly, he will rise again and he will come for us, headmaster Erumpent horn. Fenrir Grayback horseless carriages ‘zis is a chance many would die for!"
mottos = mottos_s.split(". ")

names.each do |name| 
  Follower.new(name, rand(10..75), mottos.sample)
end

10.times do
  BloodOath.new(Follower.all.sample, Cult.all.sample, DateTime.new(rand(1980...2019), rand(1..12), rand(1..31)) )
end

# date as string: "#{rand(1995...2019)}-#{rand(1..12)}-#{rand(1..31)}"



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
