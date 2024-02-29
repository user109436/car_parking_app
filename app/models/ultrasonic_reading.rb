class UltrasonicReading < ApplicationRecord
  belongs_to :parking_spot

  before_create :check_parking_spot


  private
    def check_parking_spot
      return if reading <=80
      parking_spot.status=ParkingSpot.statuses[:occupied]
    end
end
