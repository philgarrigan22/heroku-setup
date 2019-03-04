class PatientsController < ApplicationController
  def index
    @patients = Patient.all
    render json: @patients
  end

  def show
    @patients = Patient.find(params[:id])
    render json: @patients
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def update
    @patient = Patient.find(params[:id])

    if @patient.update(patient_params)
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :diagnosis, :born_on)
  end

end
