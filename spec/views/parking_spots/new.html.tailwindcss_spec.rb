require 'rails_helper'

RSpec.describe "parking_spots/new", type: :view do
  before(:each) do
    assign(:parking_spot, ParkingSpot.new(
      parking_location_id: nil,
      name: "MyString",
      status: "vacant",
      max_distance: "9.99"
    ))
  end

  it "renders new parking_spot form" do
    render

    assert_select "form[action=?][method=?]", parking_spots_path, "post" do

      assert_select "input[name=?]", "parking_spot[parking_location_id]"

      assert_select "input[name=?]", "parking_spot[name]"

      assert_select "select[name=?]", "parking_spot[status]"

      assert_select "input[name=?]", "parking_spot[max_distance]"
    end
  end
end
