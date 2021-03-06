
class Doctor

  attr_accessor :name 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    new_app = Appointment.new(patient, self, date)
    new_app
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def self.all
    @@all
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

end
