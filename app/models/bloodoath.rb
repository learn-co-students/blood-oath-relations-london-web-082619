class BloodOath
    attr_reader :cult, :follower, :date
    @@all = []
    def initialize(cult, follower, date = Time.now.strftime("%Y/%m/%d"))
        @cult = cult
        @follower = follower
        @date = date
        @@all << self
    end

    def self.first_oath
        @@all.min_by {|oath| oath.date}
    end

    def self.all
        @@all
    end
end