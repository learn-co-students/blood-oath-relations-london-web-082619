class Cult

    @@all = []

    attr_accessor :name, :location, :founding_year, :slogan, :minimum_age

    def initialize(name, location, founding_year, slogan) #Cult.new(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan 
        @minimum_age = rand(18..21)
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower) # BloodOath.new(follower, cult, initiation_date)
        #takes in an argument of a Follower instance and adds them to this cult's list of followers
        BloodOath.new(follower, self, initiation_date)
    end

    #NOT IN SPEC
    def bloodoaths
        #returns an array of all the instances of a blood oath for this cult
        BloodOath.all.select{ |oath| oath.cult == self }
    end

    def cult_population
        #returns a Fixnum that is the number of followers in this cult
        self.bloodoaths.collect{ |oath| oath.follower}.uniq.length
    end

    def self.find_by_name(name)
        #takes a String argument that is a name and returns a Cult instance whose name matches that argument
        @@all.find{ |cult| cult.name == name }
    end

    def self.find_by_location(location)
        @@all.select{ |cult| cult.location == location }
        #takes a String argument that is a location and returns an Array of cults that are in that location
    end

    def self.find_by_founding_year(year)
        #takes a Fixnum argument that is a year and returns all of the cults founded in that year
        @@all.select{ |cult| cult.founding_year == year }
    end

    #ADVANCED METHODs - ANALYTICS

    def average_age
        #returns a Float that is the average age of this cult's followers
        ages = self.bloodoaths.collect{ |oath| oath.follower.age } #returns array of all follower ages
        return ages.reduce(:+) / ages.length.to_f
    end

    def my_followers_mottos
        #prints out all of the mottos for this cult's followers
        self.bloodoaths.collect{ |oath| oath.follower.life_motto }
    end

    def self.least_popular
        #returns the Cult instance who has the least number of followers :(
        min = @@all.collect{ |cult| cult.cult_population }.min
        @@all.find{ |cult| cult.cult_population == min}
        
    end
    
    def self.most_common_location
        #returns a String that is the location with the most cults
        locations = @@all.collect{ |cult| cult.location }
        locations.max_by{ |i| locations.count(i) }
    end

    #BONUS 

    def minimum_age
        #defined at initialize(above)
    end

    def recruit_follower(follower)
        # takes in an argument of a Follower instance and adds them to this cult's list of followers
        # NOW this is changed such that if the given Follower instance is not of age:
        # do not let them join the cult
        # print out a friendly message informing them that they are too young

        if follower.age > self.minimum_age
            BloodOath.new(follower, self, Date.today.to_s)
        else 
            return "You are too young to join this cult!"
        end

    end

end