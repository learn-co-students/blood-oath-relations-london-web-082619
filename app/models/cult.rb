class Cult
    attr_reader :name, :location, :founding_yr, :slogan

    @@all = []

    #Works!
    def initialize(name, location, founding_yr, slogan)
        @name = name
        @location = location
        @founding_yr = founding_yr
        @slogan = slogan

        @@all << self
    end

    #Works!
    def recruit_follower(follower)
        BloodOath.new(Time.now, self, follower)
    end

    #Works!
    def blood_oaths()
        BloodOath.all.select { | oath | oath.cult == self }
    end

    #Works!
    def cult_population()
        blood_oaths().length
    end

    #Works!
    def self.find_by_name(name)
        @@all.find { | cult | cult.name == name }
    end

    #Works!
    def self.find_by_location(location)
        @@all.select { | cult | cult.location == location }
    end

    #Works!
    def self.find_by_founding_year(year)
        @@all.select { | cult | cult.founding_yr == year }
    end

    #Works!
    def self.all()
        @@all
    end

end
