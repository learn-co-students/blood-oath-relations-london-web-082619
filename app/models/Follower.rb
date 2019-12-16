class Follower
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def blood_oaths
      BloodOath.all.select { |bload_oath| bload_oath.follower == self }
    end

    def cults
        blood_oaths.map { |bload_oath| bload_oath.cult }
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def my_cults_slogans
        cults.map { |cult| cult.slogan }
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        @@all.select { |follower| follower.age >= age }
    end

    def self.most_active
        blood_oaths.max_by { |blood_oath| blood_oaths.count(blood_oath) }
    end


end