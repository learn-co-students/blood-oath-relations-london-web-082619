class Cult
    attr_accessor :name, :location, :slogan, :min_age
    attr_reader :founding_yr

    @@all = []

    def initialize(name, location, founding_yr, slogan, min_age = 18)
        @name = name
        @location = location
        @founding_yr = founding_yr
        @slogan = slogan
        @min_age = min_age
        @@all << self
    end

    def self.all()
        @@all
    end

    def recruit_follower(follower)
        if follower.age >= self.min_age
            BloodOath.new(self, follower)
        else
            puts "This child is not yet ready to gaze into the eternal flame!"
        end
    end


    def blood_oaths()
        BloodOath.all.select { | o | o.cult == self }
    end


    def cult_population()
        blood_oaths().length
    end

    def self.find_by_name(name)
        @@all.find { | c | c.name == name }
    end

    def self.find_by_location(location)
        @@all.select { | c | c.location == location }
    end

    def self.find_by_founding_year(year)
        @@all.select { | c | c.founding_yr == year }
    end

    def followers()
        blood_oaths.map { | o | o.follower }
    end

    def average_age()
        followers.sum { | f | f.age } / cult_population
    end

    def my_follower_mottos()
        self.followers().each() { | f | puts f.life_motto }
    end

    def self.least_popular()
        @@all.min_by { | c | c.cult_population }
    end

    def self.most_common_location()
        locations = @@all.map { | c | c.location }
        locations.max_by { | l | locations.count(l) }
    end


end