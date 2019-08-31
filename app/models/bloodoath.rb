class BloodOath
    attr_reader :name, :cult, :follower

    @@all = []

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

end

