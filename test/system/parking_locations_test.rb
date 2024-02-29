require "application_system_test_case"

class ParkingLocationsTest < ApplicationSystemTestCase
  setup do
    @parking_location = parking_locations(:one)
  end

  test "visiting the index" do
    visit parking_locations_url
    assert_selector "h1", text: "Parking locations"
  end

  test "should create parking location" do
    visit parking_locations_url
    click_on "New parking location"

    fill_in "Status", with: @parking_location.status
    fill_in "Street", with: @parking_location.street
    click_on "Create Parking location"

    assert_text "Parking location was successfully created"
    click_on "Back"
  end

  test "should update Parking location" do
    visit parking_location_url(@parking_location)
    click_on "Edit this parking location", match: :first

    fill_in "Status", with: @parking_location.status
    fill_in "Street", with: @parking_location.street
    click_on "Update Parking location"

    assert_text "Parking location was successfully updated"
    click_on "Back"
  end

  test "should destroy Parking location" do
    visit parking_location_url(@parking_location)
    click_on "Destroy this parking location", match: :first

    assert_text "Parking location was successfully destroyed"
  end
end
