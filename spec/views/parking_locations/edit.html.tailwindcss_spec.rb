require 'rails_helper'

RSpec.describe "parking_locations/edit", type: :view do
  let(:parking_location) {
    ParkingLocation.create!()
  }

  before(:each) do
    assign(:parking_location, parking_location)
  end

  it "renders the edit parking_location form" do
    render

    assert_select "form[action=?][method=?]", parking_location_path(parking_location), "post" do
    end
  end
end
