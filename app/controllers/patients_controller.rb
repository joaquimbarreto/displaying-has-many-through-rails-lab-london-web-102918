class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find_by_id(params[:id])
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self }
  end

end
