require "test_helper"

class ParkingSpotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parking_spot = parking_spots(:one)
  end

  test "should get index" do
    get parking_spots_url
    assert_response :success
  end

  test "should get new" do
    get new_parking_spot_url
    assert_response :success
  end

  test "should create parking_spot" do
    assert_difference("ParkingSpot.count") do
      post parking_spots_url, params: { parking_spot: { max_distance: @parking_spot.max_distance, name: @parking_spot.name, parking_location_id: @parking_spot.parking_location_id, status: @parking_spot.status } }
    end

    assert_redirected_to parking_spot_url(ParkingSpot.last)
  end

  test "should show parking_spot" do
    get parking_spot_url(@parking_spot)
    assert_response :success
  end

  test "should get edit" do
    get edit_parking_spot_url(@parking_spot)
    assert_response :success
  end

  test "should update parking_spot" do
    patch parking_spot_url(@parking_spot), params: { parking_spot: { max_distance: @parking_spot.max_distance, name: @parking_spot.name, parking_location_id: @parking_spot.parking_location_id, status: @parking_spot.status } }
    assert_redirected_to parking_spot_url(@parking_spot)
  end

  test "should destroy parking_spot" do
    assert_difference("ParkingSpot.count", -1) do
      delete parking_spot_url(@parking_spot)
    end

    assert_redirected_to parking_spots_url
  end
end
