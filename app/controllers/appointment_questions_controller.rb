# frozen_string_literal: true

class AppointmentQuestionsController < ApplicationController
  before_action :set_appointment_question, only: %i[show edit update destroy]

  # GET /appointment_questions or /appointment_questions.json
  def index
    @appointment_questions = AppointmentQuestion.all
  end

  # GET /appointment_questions/1 or /appointment_questions/1.json
  def show; end

  # GET /appointment_questions/new
  def new
    @appointment_question = AppointmentQuestion.new
  end

  # GET /appointment_questions/1/edit
  def edit; end

  # POST /appointment_questions or /appointment_questions.json
  def create
    @appointment_question = AppointmentQuestion.new(appointment_question_params)

    respond_to do |format|
      if @appointment_question.save
        format.html do
          redirect_to appointment_question_url(@appointment_question),
                      notice: 'Appointment question was successfully created.'
        end
        format.json { render :show, status: :created, location: @appointment_question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_questions/1 or /appointment_questions/1.json
  def update
    respond_to do |format|
      if @appointment_question.update(appointment_question_params)
        format.html do
          redirect_to appointment_question_url(@appointment_question),
                      notice: 'Appointment question was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @appointment_question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_questions/1 or /appointment_questions/1.json
  def destroy
    @appointment_question.destroy

    respond_to do |format|
      format.html { redirect_to appointment_questions_url, notice: 'Appointment question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_appointment_question
    @appointment_question = AppointmentQuestion.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def appointment_question_params
    params.require(:appointment_question).permit(:eye_side, :appointment_title_id)
  end
end
