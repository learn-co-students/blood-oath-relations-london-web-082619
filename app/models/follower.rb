class Follower
    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def self.all
        @@all
    end

    def blood_oaths
        BloodOath.all.select{|b| b.follower == self}
    end

    def join_cult(cult)
        BloodOath.new(2019, cult, self)
    end

    def self.of_a_certain_age(age)
        self.all.select{|f| f.age >= age}
    end

    def my_cults_slogans
        blood_oaths.map {|b| puts b.cult.slogan}
    end

    def self.most_active
        # all cults
        # choose follower has more cults
        self.all.max_by{|f| f.cults.count}
    end

    def cults
        blood_oaths.map(&:cult)
    end

    def self.top_ten
        # all cults for all follwer
        # followers_couts = self.all.map{|f| f.cult }
        # choose top ten
        self.all.max_by(10){|f| f.cults.count}
        
    end
end