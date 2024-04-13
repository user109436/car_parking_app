class ParkingSpot < ApplicationRecord
  belongs_to :parking_location
  has_many :ultrasonic_readings
  

  enum status:{
    occupied:'occupied',
    vacant:'vacant'
  }

  validates :status, inclusion:{in:statuses.keys, message: "%{value} is not a valid status"}
end
