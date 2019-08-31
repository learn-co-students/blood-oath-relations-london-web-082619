class Follower
    attr_reader :name, :location, :age, :life_motto
    @@all = []
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def bloodoaths
        BloodOath.all.select {|oath| oath.follower == self}
    end

    def cults
        bloodoaths.map {|oath| oath.cult}
    end

    def num_cults
        cults.length
    end

    def join_cult(cult)
        if self.age >= cult.minimum_age
            BloodOath.new(cult, self)
        else
            puts "Sorry! You're too young to join #{cult.name}"
        end
    end

    def my_cults_slogans
        cults.each {|cult| puts cult.slogan}
    end

    def fellow_cult_members    
            #checks if the iterated follower has joined any cults that 
            #the current follower has joined and also checks if the 
            #iterated follower is not himself
        Follower.all.select do |follower| 
            (follower.cults & self.cults != []) && (follower != self)
        end
    end

    def self.of_a_certain_age(age)
        @@all.select {|follower| follower.age >= age}
    end

    def self.most_active
        @@all.max_by {|follower| follower.num_cults}
    end

    def self.top_ten
        @@all.max(10) { |f1, f2| f1.num_cults <=> f2.num_cults }
    end

    def self.all
        @@all
    end
end