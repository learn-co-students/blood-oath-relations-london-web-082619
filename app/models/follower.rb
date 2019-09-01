class Follower

    @@all = []

    attr_accessor :name, :age, :life_motto
    attr_reader 
    attr_writer

    def initialize(name, age, life_motto) #Follower.new(name, age, life_motto)
        @name = name
        @age = age
        @life_motto  = life_motto
        @@all << self
    end

    def self.all
        @@all
    end

    #NOT IN SPEC
    def bloodoaths
        #returns all blood oaths this follower has taken
        BloodOath.all.select{ |oath| oath.follower == self }
    end

    def cults
        #returns an Array of this follower's cults
        self.bloodoaths.collect{ |oath| oath.cult }.uniq
    end

    def join_cult(cult)
        #takes in an argument of a Cult instance and adds this follower to the cult's list of followers
        BloodOath.new(self, cult, Date.today.to_s)
    end

    def self.of_a_certain_age(age)
        #takes a Fixnum argument that is an age and returns an Array of followers who are the given age or older
        @@all.select{ |follower| follower.age > age }
    end

    #ADVANCED METHODs - ANALYTICS

    def my_cults_slogans
        #prints out all of the slogans for this follower's cults
        self.cults.collect{ |cult| cult.slogan }
    end

    #NOT IN SPEC
    def no_of_cults
        #returns a Fixnum that is the number of cults for this follower
        self.bloodoaths.collect{ |oath| oath.cult}.uniq.length
    end

    def self.most_active
        #returns the Follower instance who has joined the most cults
        max = @@all.collect { |follower| follower.cults.length }.max
        @@all.find{ |follower| follower.cults.length == max }
    end
    
    def self.top_ten
        #returns an Array of followers; they are the ten most active followers
        @@all.max(10) { |a,b| (a.no_of_cults) <=> (b.no_of_cults) }
        # max(10)
    end

    #BONUS

    def fellow_cult_members
        #returns a unique Array of followers who are in the same cults as you
        fellow_cult_members = []
        my_cults = self.cults #array of my cults

        @@all.each do |follower|
            follower.cults.each do |cult|
                if my_cults.include?(cult)
                    fellow_cult_members << follower
                    break
                end
            end
        end

        return fellow_cult_members.uniq
    end

    def join_cult(cult)
        # takes in an argument of a Cult instance and adds this follower to the cult's list of followers
        # NOW this is changed such that if you don't meet the minimum age requirement of the given Cult instance:
        # do not let them join the cult
        # print out a friendly message informing them that they are too young
        if self.age > cult.minimum_age
            BloodOath.new(self, cult, Date.today.to_s)
        else 
            return "You are too young to join this cult!"
        end

    end

end