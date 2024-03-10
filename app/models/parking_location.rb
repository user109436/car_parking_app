class ParkingLocation < ApplicationRecord
    has_many :parking_spots


enum status:{
    active:'active',
    development:'development',
    inactive:'inactive'
}
end
