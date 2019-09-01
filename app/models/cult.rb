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
        Cult.all.select{|cult| cult.name == self.name}
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

    
end