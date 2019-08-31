class Follower
    attr_accessor :age
    attr_reader :name, :life_motto

    @@all = []

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
    def join_cult(cult)
        BloodOath.new(Time.now, cult, self)
    end

    #Works!
    def self.all()
        @@all
    end

    #Works!
    def self.of_a_certain_age(age)
        @@all.select { | follower | follower.age > age }
    end
end