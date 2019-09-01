require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cult1 = Cult.new("islam", "makkah", 610, "muslim")
cult2 = Cult.new("cult2", "location2", 900, "slogan2")
cult3 = Cult.new("islam", "location3", 1000, "slogan3")
cult4 = Cult.new("islam", "location4", 1100, "slogan4")

follower1 = Follower.new("ali", 39, "pease")
follower2 = Follower.new("matt", 32, "fight")
follower3 = Follower.new("sara", 23, "defend")
follower4 = Follower.new("basel", 18, "wise")

blood_oath1 = BloodOath.new("02092000", cult1, follower4)
blood_oath2 = BloodOath.new("02092010", cult2, follower2)
blood_oath3 = BloodOath.new("02092018", cult3, follower3)
blood_oath4 = BloodOath.new("02092009", cult4, follower1)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
