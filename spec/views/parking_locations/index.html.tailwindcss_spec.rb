require 'rails_helper'

RSpec.describe "parking_locations/index", type: :view do
  before(:each) do
    assign(:parking_locations, [
      ParkingLocation.create!(),
      ParkingLocation.create!()
    ])
  end

  it "renders a list of parking_locations" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
