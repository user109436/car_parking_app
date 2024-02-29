class ParkingLocationsController < ApplicationController
  before_action :set_parking_location, only: %i[ show edit update destroy ]

  # GET /parking_locations or /parking_locations.json
  def index
    @parking_locations = ParkingLocation.all
  end

  # GET /parking_locations/1 or /parking_locations/1.json
  def show
  end

  # GET /parking_locations/new
  def new
    @parking_location = ParkingLocation.new
  end

  # GET /parking_locations/1/edit
  def edit
  end

  # POST /parking_locations or /parking_locations.json
  def create
    @parking_location = ParkingLocation.new(parking_location_params)

    respond_to do |format|
      if @parking_location.save
        format.html { redirect_to parking_location_url(@parking_location), notice: "Parking location was successfully created." }
        format.json { render :show, status: :created, location: @parking_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parking_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_locations/1 or /parking_locations/1.json
  def update
    respond_to do |format|
      if @parking_location.update(parking_location_params)
        format.html { redirect_to parking_location_url(@parking_location), notice: "Parking location was successfully updated." }
        format.json { render :show, status: :ok, location: @parking_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parking_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_locations/1 or /parking_locations/1.json
  def destroy
    @parking_location.destroy

    respond_to do |format|
      format.html { redirect_to parking_locations_url, notice: "Parking location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_location
      @parking_location = ParkingLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parking_location_params
      params.require(:parking_location).permit(:street, :status)
    end
end
