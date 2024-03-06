class UltrasonicReadingsController < ApplicationController
  before_action :set_ultrasonic_reading, only: %i[ show edit update destroy ]

  skip_before_action :verify_authenticity_token, only: [:create ]

  # GET /ultrasonic_readings or /ultrasonic_readings.json
  def index
    @ultrasonic_readings = UltrasonicReading.all
  end

  # GET /ultrasonic_readings/1 or /ultrasonic_readings/1.json
  def show
  end

  # GET /ultrasonic_readings/new
  def new
    @ultrasonic_reading = UltrasonicReading.new
  end

  # GET /ultrasonic_readings/1/edit
  def edit
  end

  # POST /ultrasonic_readings or /ultrasonic_readings.json
  def create
    @ultrasonic_reading = UltrasonicReading.new(ultrasonic_reading_params)

    respond_to do |format|
      if @ultrasonic_reading.save
        format.html { redirect_to ultrasonic_reading_url(@ultrasonic_reading), notice: "Ultrasonic reading was successfully created." }
        format.json { render :show, status: :created, location: @ultrasonic_reading }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ultrasonic_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ultrasonic_readings/1 or /ultrasonic_readings/1.json
  def update
    respond_to do |format|
      if @ultrasonic_reading.update(ultrasonic_reading_params)
        format.html { redirect_to ultrasonic_reading_url(@ultrasonic_reading), notice: "Ultrasonic reading was successfully updated." }
        format.json { render :show, status: :ok, location: @ultrasonic_reading }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ultrasonic_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ultrasonic_readings/1 or /ultrasonic_readings/1.json
  def destroy
    @ultrasonic_reading.destroy

    respond_to do |format|
      format.html { redirect_to ultrasonic_readings_url, notice: "Ultrasonic reading was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ultrasonic_reading
      @ultrasonic_reading = UltrasonicReading.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ultrasonic_reading_params
      params.require(:ultrasonic_reading).permit(:parking_spot_id, :reading)
    end
end
