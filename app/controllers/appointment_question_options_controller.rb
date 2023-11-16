# frozen_string_literal: true

class AppointmentQuestionOptionsController < ApplicationController
  before_action :set_appointment_question_option, only: %i[show edit update destroy]

  # GET /appointment_question_options or /appointment_question_options.json
  def index
    @appointment_question_options = AppointmentQuestionOption.all
  end

  # GET /appointment_question_options/1 or /appointment_question_options/1.json
  def show; end

  # GET /appointment_question_options/new
  def new
    @appointment_question_option = AppointmentQuestionOption.new
  end

  # GET /appointment_question_options/1/edit
  def edit; end

  # POST /appointment_question_options or /appointment_question_options.json
  def create
    @appointment_question_option = AppointmentQuestionOption.new(appointment_question_option_params)

    respond_to do |format|
      if @appointment_question_option.save
        format.html do
          redirect_to appointment_question_option_url(@appointment_question_option),
                      notice: 'Appointment question option was successfully created.'
        end
        format.json { render :show, status: :created, location: @appointment_question_option }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment_question_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_question_options/1 or /appointment_question_options/1.json
  def update
    respond_to do |format|
      if @appointment_question_option.update(appointment_question_option_params)
        format.html do
          redirect_to appointment_question_option_url(@appointment_question_option),
                      notice: 'Appointment question option was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @appointment_question_option }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment_question_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_question_options/1 or /appointment_question_options/1.json
  def destroy
    @appointment_question_option.destroy

    respond_to do |format|
      format.html do
        redirect_to appointment_question_options_url, notice: 'Appointment question option was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_appointment_question_option
    @appointment_question_option = AppointmentQuestionOption.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def appointment_question_option_params
    params.require(:appointment_question_option).permit(:appointment_question_id)
  end
end
