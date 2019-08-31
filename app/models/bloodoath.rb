class BloodOath
    attr_reader :name, :cult, :follower

    @@all = []


    ###### Instance methods ######
    #Works!
    def initialize(date, cult, follower)
        @date = date
        @cult = cult
        @follower = follower

        @@all << self
    end

    #Works!
    def date()
        @date.strftime("%Y-%m-%d")
    end

    #Works!
    def self.all()
        @@all
    end


    ###### Class methods ######
    #Works!
    def self.first_oath()
        @@all[0].follower
    end

end

