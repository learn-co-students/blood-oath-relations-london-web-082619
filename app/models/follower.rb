require 'date'

class Follower

    @@all=[]

    attr_accessor :name, :age, :motto

    def initialize(name, age, motto)
        if name.is_a? String then @name = name else raise "Name must be of type String" end
        if age.is_a? Fixnum then @age = age else raise "Age must be of type Fixnum" end
        if motto.is_a? String then @motto= motto else raise "Motto must be of type Fixnum" end
        @@all << self
    end

    def self.all
        @@all
    end

    def oaths
        BloodOath.all.select{|oath| oath.follower == self}
    end
    
    def cults
        oaths.map{|oath| oath.cult}
    end

    def join_cult(cult)
        BloodOath.new(Date.today, cult, self)
    end

    def self.of_certain_age(age)
        self.all.select{|follower| follower.age >age}
    end

end


#Cannot join a cult unless through a blood_oath