require 'rails_helper'

RSpec.describe UltrasonicReading, type: :model do
  describe "#check_parking_spot" do
    let(:parking_location){
      ParkingLocation.create!(
        street:"Test Location",
        status:'active'
      )
    }

    let(:parking_spot){
      ParkingSpot.create!(
        parking_location_id:parking_location.id,
        name:'Test Spot',
        status:"vacant",
        max_distance:50
      )
    }

    context 'when reading <= parking_spot distance' do
      it 'updates the parking spot to be occupied' do 
        ultrasonic_reading  = UltrasonicReading.create(reading:45, parking_spot_id:parking_spot.id)
        expect(parking_spot.reload.status).to eq('occupied')
      end
    end

    context 'when reading >= parking_spot distance' do 
      it 'updates the parking spot to be vacant' do 
        ultrasonic_reading  = UltrasonicReading.create(reading:100, parking_spot_id:parking_spot.id)
        expect(parking_spot.reload.status).to eq('vacant')
      end
    end

  end
end
