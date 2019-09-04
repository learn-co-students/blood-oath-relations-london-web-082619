class Bloodoath
    @@all = []
    attr_accessor :cult, :follower
   
  #order matters in while giving argument.

  def initialize(cult,follower, date = Time.now.strftime("%Y/%m/%d") )
    @cult = cult  
    @follower = follower
    @@all << self
    @date = date

end

    def date
     Time.now
    end

   def self.first_oath
   
    @@all.min_by{|oath| oath.date}

   end

def self.all  #stores all the initialized methods
   
    @@all 
    
    end

end
