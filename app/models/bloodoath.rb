class BloodOath
    attr_reader :name, :cult, :follower

    @@all = []


    def initialize(cult, follower)
        @date = Time.now
        @cult = cult
        @follower = follower
        @@all << self
    end

    def date()
        @date.strftime("%Y-%m-%d")
    end

    def self.all()
        @@all
    end

    def self.first_oath()
        @@all.min_by() { | o | o.date() }
    end

end
