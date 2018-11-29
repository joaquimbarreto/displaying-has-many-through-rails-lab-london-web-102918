class Appointment < ActiveRecord::Base

  belongs_to :patient
  belongs_to :doctor

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end

end
