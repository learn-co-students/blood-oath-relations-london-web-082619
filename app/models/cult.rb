class Cult
    attr_reader :name, :location, :founding_yr, :slogan

    @@all = []


    ###### Instance methods ######

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
    def population()
        blood_oaths().length
    end

    #Works!
    def followers()
        blood_oaths.map { | oath | oath.follower }
    end

    #Works!
    def average_age()
        total_age = followers.reduce(0) { | memo, follower | memo += follower.age }
        (total_age / population()).to_f()
    end

    ###### Class methods ######

    #Works!
    def self.all()
        @@all
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
    def self.least_popular()
        @@all.min_by { | cult | cult.population }
    end

    #Works!
    def self.most_common_location()
        locations = @@all.map { | cult | cult.location }
        locations.max_by { | location | locations.count(location) }
    end


end
