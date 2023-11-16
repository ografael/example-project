class AppointmentTitlesController < ApplicationController
  before_action :set_appointment_title, only: %i[ show edit update destroy ]

  # GET /appointment_titles or /appointment_titles.json
  def index
    @appointment_titles = AppointmentTitle.all
  end

  # GET /appointment_titles/1 or /appointment_titles/1.json
  def show
  end

  # GET /appointment_titles/new
  def new
    @appointment_title = AppointmentTitle.new
  end

  # GET /appointment_titles/1/edit
  def edit
  end

  # POST /appointment_titles or /appointment_titles.json
  def create
    @appointment_title = AppointmentTitle.new(appointment_title_params)

    respond_to do |format|
      if @appointment_title.save
        format.html { redirect_to appointment_title_url(@appointment_title), notice: "Appointment title was successfully created." }
        format.json { render :show, status: :created, location: @appointment_title }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_titles/1 or /appointment_titles/1.json
  def update
    respond_to do |format|
      if @appointment_title.update(appointment_title_params)
        format.html { redirect_to appointment_title_url(@appointment_title), notice: "Appointment title was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment_title }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_titles/1 or /appointment_titles/1.json
  def destroy
    @appointment_title.destroy

    respond_to do |format|
      format.html { redirect_to appointment_titles_url, notice: "Appointment title was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_title
      @appointment_title = AppointmentTitle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_title_params
      params.require(:appointment_title).permit(:name, :appointment_group_id)
    end
end
