class Doctor 
  attr_accessor :name 
  @@all = [ ]
  
  def initialize(name) 
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select{|appt| appt.doctor = self}
  end
  
  def patients
    pat_array = Appointment.all.select{|appt| appt.doctor = self}
    pat_array.collect{|appt| appt.patient}
  end

end