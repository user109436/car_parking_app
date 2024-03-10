require 'rails_helper'

RSpec.describe "parking_spots/show", type: :view do
  before(:each) do
    assign(:parking_spot, ParkingSpot.create!(
      parking_location: nil,
      name: "Name",
      status: "Status",
      max_distance: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/9.99/)
  end
end
