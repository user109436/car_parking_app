require 'rails_helper'

RSpec.describe "parking_locations/show", type: :view do
  before(:each) do
    assign(:parking_location, ParkingLocation.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
