# frozen_string_literal: true

class AppointmentQuestionResponsesController < ApplicationController
  before_action :set_appointment_question_response, only: %i[show edit update destroy]
  before_action :set_appointment_groups, only: %i[new edit update]

  # GET /appointment_question_responses or /appointment_question_responses.json
  def index
    @appointment_question_responses = AppointmentQuestionResponse.all
  end

  # GET /appointment_question_responses/1 or /appointment_question_responses/1.json
  def show; end

  # GET /appointment_question_responses/new
  def new
    @appointment_question_response = AppointmentQuestionResponse.new
  end

  # GET /appointment_question_responses/1/edit
  def edit; end

  # POST /appointment_question_responses or /appointment_question_responses.json
  def create
    @appointment_question_response = AppointmentQuestionResponse.new(appointment_question_response_params)

    respond_to do |format|
      if @appointment_question_response.save
        format.html do
          redirect_to appointment_question_response_url(@appointment_question_response),
                      notice: 'Appointment question response was successfully created.'
        end
        format.json { render :show, status: :created, location: @appointment_question_response }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment_question_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_question_responses/1 or /appointment_question_responses/1.json
  def update
    respond_to do |format|
      if @appointment_question_response.update(appointment_question_response_params)
        format.html do
          redirect_to appointment_question_response_url(@appointment_question_response),
                      notice: 'Appointment question response was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @appointment_question_response }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment_question_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_question_responses/1 or /appointment_question_responses/1.json
  def destroy
    @appointment_question_response.destroy

    respond_to do |format|
      format.html do
        redirect_to appointment_question_responses_url,
                    notice: 'Appointment question response was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  private

  def set_appointment_groups
    @appointment_groups = AppointmentGroup.all
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_appointment_question_response
    @appointment_question_response = AppointmentQuestionResponse.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def appointment_question_response_params
    params.require(:appointment_question_response).permit(:appointment_question_id,
                                                          appointment_question_option: %i[
                                                            appointment_question_option_id question_option
                                                          ])
  end
end
