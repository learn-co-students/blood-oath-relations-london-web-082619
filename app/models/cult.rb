class Cult 
    #has many followers
    
    @@all = []
     attr_reader :name,:founding_year,:slogan,:location
    
    
    def initialize(name,founding_year,slogan,location)
        @name = name
        @founding_year = founding_year
        @slogan = slogan
        @location = location
        @@all << self
    end
    
    
    
    # def name #returns string of that cults name

    # end

    # def location #that city where the cult is located

    # end

    # def founding_year #returns year when cult was founded

    # end

    # def slogan #returns a string of the slogan
    
    # end

    def recruit_follower(follower)
     Bloodoath.new(self,follower)
    end

    def bloodoaths #i am iterating to make connection 

        Bloodoath.all.select{|bloodoath|bloodoath.cult == self}

    end

    def followers
        bloodoaths.map{|bloodoath|bloodoath.follower}
    end


    def cult_population

      followers.length
    
    end
    ##Advanced Methods 

    

    def average_age #average_age, returns a Float that is average of cult followers
     
        followers.sum{|follower|follower.age}/cult_population

    end

    def my_followers_mottos #life motto was defined in the other method
     
        followers.each{|follower|follower.life_motto}

    end
    
    
    
    
        #class methods now

    def self.least_popular 
     
        @@all.min_by{|cult|cult.followers}

    end

    def self.locations
        @@all.map {|cult|cult.location }
    
    end

    def self.most_common_location 
    
        location.max_by{|cult|cult.location.(location)}
    end

    def self.all 
        @@all 
    end

    def self.find_by_name(name) #returns Cult.names instance with names

      @@all.find{|cult|cult.name == name }

    end

    def self.find_by_location(location)
    
    @@all.find{|cult|cult.location == location}
    end

    def self.find_by_founding_year(year)

    @@all.find{|cult|cult.founding_year == year}

    end
end

    