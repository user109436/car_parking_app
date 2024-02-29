require "application_system_test_case"

class ParkingSpotsTest < ApplicationSystemTestCase
  setup do
    @parking_spot = parking_spots(:one)
  end

  test "visiting the index" do
    visit parking_spots_url
    assert_selector "h1", text: "Parking spots"
  end

  test "should create parking spot" do
    visit parking_spots_url
    click_on "New parking spot"

    fill_in "Max distance", with: @parking_spot.max_distance
    fill_in "Name", with: @parking_spot.name
    fill_in "Parking location", with: @parking_spot.parking_location_id
    fill_in "Status", with: @parking_spot.status
    click_on "Create Parking spot"

    assert_text "Parking spot was successfully created"
    click_on "Back"
  end

  test "should update Parking spot" do
    visit parking_spot_url(@parking_spot)
    click_on "Edit this parking spot", match: :first

    fill_in "Max distance", with: @parking_spot.max_distance
    fill_in "Name", with: @parking_spot.name
    fill_in "Parking location", with: @parking_spot.parking_location_id
    fill_in "Status", with: @parking_spot.status
    click_on "Update Parking spot"

    assert_text "Parking spot was successfully updated"
    click_on "Back"
  end

  test "should destroy Parking spot" do
    visit parking_spot_url(@parking_spot)
    click_on "Destroy this parking spot", match: :first

    assert_text "Parking spot was successfully destroyed"
  end
end
