require 'rails_helper'

RSpec.describe "ultrasonic_readings/index", type: :view do

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
    assign(:ultrasonic_readings, [
      UltrasonicReading.create!(
        parking_spot_id: parking_spot.id,
        reading: 46
      ),
      UltrasonicReading.create!(
        parking_spot_id: parking_spot.id,
        reading: 45
      )
    ])
  end

  it "renders a list of ultrasonic_readings" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
