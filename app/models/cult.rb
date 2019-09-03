class Cult
    attr_reader :name, :location, :founding_year, :slogan
    @@all = []
    
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def self.all
        @@all 
    end
    
    def blood_oaths
        BloodOath.all.select{|b| b.cult == self}
    end

    def recruit_follower(follower)
        BloodOath.new(2019, self, follower)
    end

    def cult_population
        blood_oaths.length
    end

    def self.find_by_name(name)
        self.all.find{|cult| cult.name == name}
    end
    
    def self.find_by_location(location)
        self.all.find{|cult| cult.location == location}
    end

    def self.find_by_founding_year(founding_year)
        self.all.find{|cult| cult.founding_year == founding_year}
    end

    ## Advance methods
    def followers
        blood_oaths.map(&:follower)
    end
    
    def average_age
        self.followers.sum(&:age) / self.followers.count
    end

    def my_followers_mottos
        followers.map(&:life_motto)
    end

    def self.least_popular
        self.all.min_by{|c| c.followers.length}
    end

    def self.most_common_location
        # get all cults
        # for each select all similar location  
        # 
        # duplicate = Hash.new(0)
        # self.all.each{|c| a[c.location]}
        
        locationCounts = Cult.all.reduce({}) do |acc, cult| # reduce ({}): start reduce with empty hash so acc = {}

            if acc.key?cult.location
                acc[cult.location] += 1
            else  #create key
                acc[cult.location] = 1
            end
            acc
        end

        locationCounts.sort_by {|arr| arr[1]}.last[0]
    end

    def self.locations
        # return all locations
        @@all.map(&:location)
    end

    def self.most_common_location2 
        # iterate all locations
        # find the maximum location was repeted : using count(name of location)
        common_location = Cult.locations.max_by {|location| Cult.locations.count(location) }
        
    end 

    
end