class Cult
    attr_reader :name, :location, :year, :slogan, :minimum_age
    @@all = []
    def initialize(name, location, year, slogan, min_age = 18)
        @name = name
        @location = location
        @year = year
        @slogan = slogan
        @minimum_age = min_age
        @@all << self
    end

    def bloodoaths
        BloodOath.all.select {|oath| oath.cult == self}
    end

    def followers
        bloodoaths.map {|oath| oath.follower}
    end

    def recruit_follower(follower)  
        if follower.age >= self.minimum_age           
            BloodOath.new(self, follower)
        else
            puts "Sorry! That follower is too young to join #{self.name}."
        end
    end

    def cult_population                         
        followers.length
    end

    def average_age                             
        followers.sum {|follower| follower.age}.to_f / cult_population
    end

    def my_followers_mottos                            
        followers.each {|follower| puts follower.life_motto}
    end

    def self.locations
        @@all.map { | cult | cult.location }
    end

    def self.find_by_name(name)                 
        @@all.find {|cult| cult.name == name}
    end

    def self.find_by_location(location)         
        @@all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)      
        @@all.select {|cult| cult.year == year}
    end

    def self.least_popular            
        @@all.min_by { |cult| cult.cult_population }
    end

    def self.most_common_location           
        locations.max_by { |location| locations.count(location) }
    end

    def self.all
        @@all
    end
end