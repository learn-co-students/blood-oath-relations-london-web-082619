class BloodOath

    @@all=[]

    attr_reader :date, :cult, :follower

    def initialize(date, cult, follower)
        @date = date
        @cult = cult
        @follower = follower
        #Must be of the format _YYYY-MM-DD_.
        #Make this the date now!
        @@all << self
    end

    def self.all
        @@all
    end

end