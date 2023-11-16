class AppointmentGroupsController < ApplicationController
  before_action :set_appointment_group, only: %i[ show edit update destroy ]

  # GET /appointment_groups or /appointment_groups.json
  def index
    @appointment_groups = AppointmentGroup.all
  end

  # GET /appointment_groups/1 or /appointment_groups/1.json
  def show
  end

  # GET /appointment_groups/new
  def new
    @appointment_group = AppointmentGroup.new
  end

  # GET /appointment_groups/1/edit
  def edit
  end

  # POST /appointment_groups or /appointment_groups.json
  def create
    @appointment_group = AppointmentGroup.new(appointment_group_params)

    respond_to do |format|
      if @appointment_group.save
        format.html { redirect_to appointment_group_url(@appointment_group), notice: "Appointment group was successfully created." }
        format.json { render :show, status: :created, location: @appointment_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_groups/1 or /appointment_groups/1.json
  def update
    respond_to do |format|
      if @appointment_group.update(appointment_group_params)
        format.html { redirect_to appointment_group_url(@appointment_group), notice: "Appointment group was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_groups/1 or /appointment_groups/1.json
  def destroy
    @appointment_group.destroy

    respond_to do |format|
      format.html { redirect_to appointment_groups_url, notice: "Appointment group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_group
      @appointment_group = AppointmentGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_group_params
      params.require(:appointment_group).permit(:name)
    end
end
