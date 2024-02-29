class ParkingSpot < ApplicationRecord
  belongs_to :parking_location
  has_many :ultrasonic_readings
  

  enum status:{
    occupied:'occupied',
    vacant:''
  }
end
