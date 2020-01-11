class Patient 
    attr_accessor :name
    def initialize(name) 
        @name = name 
        @@all << self 
    end 

    @@all = [] 

    def new_appointment(doctor, date) 
        Appointment.new(date,self,doctor)
    end 

    def appointments 
        Appointment.all.select{|app| app.patient == self}
    end 

    def doctors 
        appointments.map{|app| app.doctor}
    end 

    def self.all 
        @@all 
    end 
end 