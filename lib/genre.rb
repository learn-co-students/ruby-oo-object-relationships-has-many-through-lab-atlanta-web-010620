class Genre 
    attr_reader :name 
    # instance methods 
    def initialize(name) 
        @name = name 
        @@all << self 
    end 

    def songs 
        Song.all.select{|song| song.genre == self}
    end 

    def artists 
        songs.map{|song| song.artist}
    end 


    # class variables 
    @@all = [] 

    # class methods 

    def self.all 
        @@all 
    end 
end 