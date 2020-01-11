class Song 
    attr_accessor :name,:artist,:genre 
    def initialize(name,artist,genre) 
        @name = name 
        @artist = artist 
        @genre = genre 
        @@all << self 
    end 

    # class variables 
    @@all = [] 

    # class methods 
    def self.all 
        @@all 
    end 
end 