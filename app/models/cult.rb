class Cult
    attr_accessor :name, :location, :slogan, :min_age
    attr_reader :founding_yr

    @@all = []


    ###### Instance methods ######

    #Works!
    def initialize(name, location, founding_yr, slogan, min_age=18)
        @name = name
        @location = location
        @founding_yr = founding_yr
        @slogan = slogan
        @min_age = min_age

        @@all << self
    end

    #Works!
    def recruit_follower(follower)
        if follower.age >= self.min_age
            BloodOath.new(self, follower)
        else
            puts "Sorry! That follower is too young for this circle of damnation."
        end
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
        (total_age.to_f() / population())
    end

    def follower_mottos()
        self.followers().each() { | follower | puts follower.life_motto }
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
