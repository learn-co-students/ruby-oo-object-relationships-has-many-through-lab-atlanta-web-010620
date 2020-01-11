class Appointment 
    attr_reader :date,:patient,:doctor
    def initialize(date,patient,doctor) 
        @date = date.to_s 
        @patient = patient 
        @doctor = doctor
        @@all << self 
    end 

    @@all = []

    def self.all 
        @@all 
    end 
end     