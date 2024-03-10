require 'rails_helper'

RSpec.describe "parking_spots/edit", type: :view do
  let(:parking_spot) {
    ParkingSpot.create!(
      parking_location: nil,
      name: "MyString",
      status: "MyString",
      max_distance: "9.99"
    )
  }

  before(:each) do
    assign(:parking_spot, parking_spot)
  end

  it "renders the edit parking_spot form" do
    render

    assert_select "form[action=?][method=?]", parking_spot_path(parking_spot), "post" do

      assert_select "input[name=?]", "parking_spot[parking_location_id]"

      assert_select "input[name=?]", "parking_spot[name]"

      assert_select "input[name=?]", "parking_spot[status]"

      assert_select "input[name=?]", "parking_spot[max_distance]"
    end
  end
end
