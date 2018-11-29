class RemoveDoctorIdAndPatientIdFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :doctor_id, :integer
    remove_column :appointments, :patient_id, :integer
  end
end
