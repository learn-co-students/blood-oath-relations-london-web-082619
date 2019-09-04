class Follower
    #has many cults 
    
    @@all = []
    attr_reader :name, :age
    
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end
 #instance method 
 
    def bloodoaths

    Bloodoath.all.select{|bloodoath|bloodoath.follower == self}

    end

   

    def cults 
     
    bloodoaths.map{|b| b.cult}
    
    end

    def life_motto #returns followers motto
    
    cults.map{|cult|cult.slogan}

    end

    def join_cult(name)

    Bloodoath.new(self,name)

    end

    def my_cults_slogans #take helper method iterate over it use each method to print all. 
    
    cults.each{|cult|cult.slogan}

    end 

    def num_cults  #total number of cults a follower has joined
        cults.length
    end
     



    #class methods


    def self.of_a_certain_age(a)
     @@all.select{|follower|follower.age >= a}
     
    end

    def self.most_active 

        @@all.max_by{|follower|follower.cult}

    end

    
    def self.top_ten #maxby 10 and the compare number of cults with the each other.

    @@all.max(10) { |f1, f2| f1.num_cults <=> f2.num_cults }


    end

    def self.all 
        @@all 
    end

end
