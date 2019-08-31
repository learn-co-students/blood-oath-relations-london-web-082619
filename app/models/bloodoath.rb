class BloodOath
    attr_reader :name, :cult, :follower

    @@all = []


    ###### Instance methods ######
    #Works!
    def initialize(cult, follower)
        @date = Time.now
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
        @@all.min_by() { | oath | oath.date() }
    end

end

