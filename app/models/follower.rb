class Follower
    attr_accessor :age, :life_motto
    attr_reader :name

    @@all = []


    ###### Instance methods ######

    #Works!
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    #Works!
    def blood_oaths()
        BloodOath.all.select { | oath | oath.follower == self }
    end

    #Works!
    def cults()
        blood_oaths().map { | oath | oath.cult }
    end

    #Works!
    def num_cults()
        blood_oaths().length
    end

    #Works!
    def join_cult(cult)
        if self.age >= cult.min_age
            BloodOath.new(cult, self)
        else
            puts "Sorry! You're too young to join this circle of damnation."
        end
    end

    #Works!
    def cult_slogans()
        self.cults().each() { | cult | puts cult.slogan }
    end

    #Works!
    def fellow_cult_members()
        Follower.all.select() do | follower |
            follower.cults & self.cults != [] && follower != self
        end
    end


    ###### Class methods ######

    #Works!
    def self.all()
        @@all
    end

    #Works!
    def self.of_a_certain_age(age)
        @@all.select { | follower | follower.age > age }
    end

    #Works!
    def self.most_active
        @@all.max_by() { | follower | follower.num_cults() }
    end

    #Works!
    def self.top_ten
        @@all.max(10) { | a, b | a.num_cults() <=> b.num_cults }
    end

end