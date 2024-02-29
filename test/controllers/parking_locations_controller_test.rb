require "test_helper"

class ParkingLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_location = parking_locations(:one)
  end

  test "should get index" do
    get parking_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_location_url
    assert_response :success
  end

  test "should create parking_location" do
    assert_difference("ParkingLocation.count") do
      post parking_locations_url, params: { parking_location: { status: @parking_location.status, street: @parking_location.street } }
    end

    assert_redirected_to parking_location_url(ParkingLocation.last)
  end

  test "should show parking_location" do
    get parking_location_url(@parking_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_location_url(@parking_location)
    assert_response :success
  end

  test "should update parking_location" do
    patch parking_location_url(@parking_location), params: { parking_location: { status: @parking_location.status, street: @parking_location.street } }
    assert_redirected_to parking_location_url(@parking_location)
  end

  test "should destroy parking_location" do
    assert_difference("ParkingLocation.count", -1) do
      delete parking_location_url(@parking_location)
    end

    assert_redirected_to parking_locations_url
  end
end
