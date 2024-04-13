require 'rails_helper'

RSpec.describe "parking_spots/index", type: :view do
   let(:parking_location_attribute){
    {
      street:"Test Address",
      status:'active'
    }
  }
  let(:parking_location){ParkingLocation.create! parking_location_attribute}
  
  before(:each) do
    assign(:parking_spots, [
      ParkingSpot.create!(
        parking_location_id:parking_location.id,
        name: "Name",
        status: "vacant",
        max_distance: "9.99"
      ),
      ParkingSpot.create!(
        parking_location_id: parking_location.id,
        name: "Name",
        status: "vacant",
        max_distance: "9.99"
      )
    ])
  end

  it "renders a list of parking_spots" do
    render
    # cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    cell_selector = 'div#parking_spots>div'


    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("vacant".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end
