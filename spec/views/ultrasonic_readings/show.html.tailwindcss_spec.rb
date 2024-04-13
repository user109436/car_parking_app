require 'rails_helper'

RSpec.describe "ultrasonic_readings/show", type: :view do

  let(:parking_location_attribute){
    {
      street:"Test Street",
      status:"active"
    }
  }
  let(:parking_location){ParkingLocation.create! parking_location_attribute}
  let(:parking_spot_attribute){
    {
      name:"Test",
      status:"vacant",
      max_distance:50.0,
      parking_location_id:parking_location.id
    }
  }
  let(:parking_spot){ ParkingSpot.create! parking_spot_attribute}
  before(:each) do
    assign(:ultrasonic_reading, UltrasonicReading.create!(
      parking_spot_id: parking_spot.id,
      reading: 46
    ))
  end

  it "renders attributes in <p>" do
    render
  end
end
