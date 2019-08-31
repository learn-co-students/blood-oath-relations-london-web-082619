class Follower
    attr_accessor :age, :life_motto
    attr_reader :name

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def self.all()
        @@all
    end

    def blood_oaths()
        BloodOath.all.select { | b | b.follower == self }
    end

    def cults()
        blood_oaths().map { | b | b.cult }
    end

    def join_cult(cult)
            BloodOath.new(cult, self)
    end

    def self.of_a_certain_age(age)
        @@all.select { | f | f.age >= age }
    end

    def my_cults_slogans()
        self.cults().each() { | c| puts c.slogan }
    end

    def num_cults()
        blood_oaths().length
    end

    def self.most_active
        @@all.max_by() { | f | f.num_cults() }
    end

    def self.top_ten
        @@all.max(10) { | a, b | a.num_cults() <=> b.num_cults }
    end

end 