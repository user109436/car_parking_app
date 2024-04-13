require 'rails_helper'

RSpec.describe "parking_spots/show", type: :view do
 let(:parking_location_attribute){
    {
      street:"Test Address",
      status:'active'
    }
  }
  let(:parking_location){ParkingLocation.create! parking_location_attribute}
 
  before(:each) do
    assign(:parking_spot, ParkingSpot.create!(
      parking_location_id: parking_location.id,
      name: "Name",
      status: "vacant",
      max_distance: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/vacant/)
    expect(rendered).to match(/9.99/)
  end
end
