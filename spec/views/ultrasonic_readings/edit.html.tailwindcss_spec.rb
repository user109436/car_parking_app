require 'rails_helper'

RSpec.describe "ultrasonic_readings/edit", type: :view do

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
  let(:ultrasonic_reading) {
    UltrasonicReading.create!(
      parking_spot_id: parking_spot.id,
      reading: 45
    )
  }
  before(:each) do
    assign(:ultrasonic_reading, ultrasonic_reading)
  end

  it "renders the edit ultrasonic_reading form" do
    render

    assert_select "form[action=?][method=?]", ultrasonic_reading_path(ultrasonic_reading), "post" do
    end
  end
end
