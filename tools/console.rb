require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
cult1 = Cult.new("islam", "makkah", 610, "muslim")
cult2 = Cult.new("cult2", "location2", 900, "slogan2")
cult3 = Cult.new("cult3", "location3", 1000, "slogan3")
cult3 = Cult.new("cult3", "location3", 1000, "slogan3")
cult3 = Cult.new("cult3", "location3", 1000, "slogan3")
cult4 = Cult.new("cult4", "location4", 1100, "slogan4")
cult5 = Cult.new("cult5", "location4", 11200, "slogan5")

follower1 = Follower.new("ali", 39, "pease")
follower2 = Follower.new("matt", 32, "fight")
follower3 = Follower.new("sara", 23, "defend")
follower4 = Follower.new("basel", 18, "wise")

blood_oath1 = BloodOath.new("02092000", cult1, follower4)
blood_oath2 = BloodOath.new("02092010", cult2, follower2)
blood_oath3 = BloodOath.new("02092018", cult3, follower2)
blood_oath4 = BloodOath.new("02092009", cult1, follower1)
blood_oath5 = BloodOath.new("02092009", cult1, follower3)
blood_oath6 = BloodOath.new("02092009", cult2, follower3)
blood_oath7 = BloodOath.new("02092000", cult3, follower3)


# follower2.my_cults_slogans

binding.pry

# puts follower1.top_ten



puts "Mwahahaha!" # just in case pry is buggy and exits
