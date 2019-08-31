require 'date'

class Cult

    @@all=[]

    attr_accessor :name, :location, :slogan 
    attr_reader :founding_year

    def initialize(name, location, founding_year, slogan)
        if name.is_a? String then @name = name else raise "Name must be of type String" end
        if location.is_a? String then @location = location else raise "Location must be of type String" end
        if founding_year.is_a? Fixnum then @founding_year = founding_year else raise "Founding_year must be of type Fixnum" end
        if slogan.is_a? String then @slogan = slogan else raise "Slogan must be of type String" end
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new(Date.today, self, follower)
    end

    def cult_population
        #Finds the number of followers in this cult
        BloodOath.all.select{|oath| oath.cult == self}.length
    end

    def self.find_by_name(name)
        #Finds a cult instance whose name matches the argument provided
        self.all.select{|cult| cult.name == name}
    end
    
    def self.find_by_location(location)
        #Finds cults based in the provided location
        self.all.select{|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        #Finds cults founded in the provided year
        self.all.select{|cult| cult.founding_year == year}
    end
end