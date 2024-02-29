class ParkingSpotsController < ApplicationController
  before_action :set_parking_spot, only: %i[ show edit update destroy ]

  # GET /parking_spots or /parking_spots.json
  def index
    @parking_spots = ParkingSpot.all
  end

  # GET /parking_spots/1 or /parking_spots/1.json
  def show
  end

  # GET /parking_spots/new
  def new
    @parking_spot = ParkingSpot.new
  end

  # GET /parking_spots/1/edit
  def edit
  end

  # POST /parking_spots or /parking_spots.json
  def create
    @parking_spot = ParkingSpot.new(parking_spot_params)

    respond_to do |format|
      if @parking_spot.save
        format.html { redirect_to parking_spot_url(@parking_spot), notice: "Parking spot was successfully created." }
        format.json { render :show, status: :created, location: @parking_spot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parking_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_spots/1 or /parking_spots/1.json
  def update
    respond_to do |format|
      if @parking_spot.update(parking_spot_params)
        format.html { redirect_to parking_spot_url(@parking_spot), notice: "Parking spot was successfully updated." }
        format.json { render :show, status: :ok, location: @parking_spot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parking_spot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_spots/1 or /parking_spots/1.json
  def destroy
    @parking_spot.destroy

    respond_to do |format|
      format.html { redirect_to parking_spots_url, notice: "Parking spot was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_spot
      @parking_spot = ParkingSpot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parking_spot_params
      params.require(:parking_spot).permit(:parking_location_id, :name, :status, :max_distance)
    end
end
