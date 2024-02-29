require 'faker'

def parking_location_status
    ['active', 'development'].sample
end

def generate_address
    Faker::Address.full_address
end

def ultrasonic_reading
    rand(50..100)
end

def build_parking_spots(spots=9, parking_location)
    spots.times do |number|
    parking_spot = ParkingSpot.new
    parking_spot.parking_location_id = parking_location.id
    parking_spot.name = "00#{number}-level-1"
    parking_spot.status = ParkingSpot.statuses[:vacant]
    parking_spot.save!
   end
end

3.times do 
   parking_location = ParkingLocation.new
   parking_location.street =generate_address
   parking_location.status = parking_location_status
   parking_location.save!
   build_parking_spots(9, parking_location)
end

puts "Created Parking Locations:#{ParkingLocation.count}"
puts "Created Parking Spots:#{ParkingSpot.count}"