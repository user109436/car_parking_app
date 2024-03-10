require 'rails_helper'

RSpec.describe "parking_locations/new", type: :view do
  before(:each) do
    assign(:parking_location, ParkingLocation.new())
  end

  it "renders new parking_location form" do
    render

    assert_select "form[action=?][method=?]", parking_locations_path, "post" do
    end
  end
end
