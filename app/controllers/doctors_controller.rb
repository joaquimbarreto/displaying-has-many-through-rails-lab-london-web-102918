class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find_by_id(params[:id])
  end

  def patients
    Patient.all.select {|patient| patient.doctor == self}
  end

end
