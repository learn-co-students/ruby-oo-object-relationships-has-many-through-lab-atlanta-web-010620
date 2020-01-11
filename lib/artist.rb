class Artist 
    attr_reader :name 
    # instance variables 
    def initialize(name) 
        @name = name 
        @@all << self 
    end

    # instance methods 
    def new_song(title, genre) 
        song = Song.new(title,self,genre) 
    end 

    def songs 
        Song.all.select{|song| song.artist == self}
    end

    def genres 
        songs.map {|song| song.genre}
    end

    # class variables 
    @@all = [] 

    # class methods 
    def self.all 
        @@all 
    end 
end 