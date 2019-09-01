class BloodOath

    @@all = []

    attr_accessor :initiation_date, :follower, :cult

    # initiation date of this blood oath in the format YYYY-MM-DD.

    def initialize(follower, cult, initiation_date) #BloodOath.new(follower, cult, initiation_date)
        @follower = follower
        @cult = cult
        @initiation_date = initiation_date #string; format YYYY-MM-DD
        @@all << self
    end

    def self.all
        @@all
    end

    #ADVANCED METHODs - ANALYTICS

    def self.first_oath
        #returns the Follower instance for the follower that made the very first blood oath
        @@all.min{ |a, b| a.initiation_date <=> b.initiation_date }.follower
    end
        
end