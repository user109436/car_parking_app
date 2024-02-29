require "test_helper"

class UltrasonicReadingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ultrasonic_reading = ultrasonic_readings(:one)
  end

  test "should get index" do
    get ultrasonic_readings_url
    assert_response :success
  end

  test "should get new" do
    get new_ultrasonic_reading_url
    assert_response :success
  end

  test "should create ultrasonic_reading" do
    assert_difference("UltrasonicReading.count") do
      post ultrasonic_readings_url, params: { ultrasonic_reading: { parking_spot_id: @ultrasonic_reading.parking_spot_id, reading: @ultrasonic_reading.reading } }
    end

    assert_redirected_to ultrasonic_reading_url(UltrasonicReading.last)
  end

  test "should show ultrasonic_reading" do
    get ultrasonic_reading_url(@ultrasonic_reading)
    assert_response :success
  end

  test "should get edit" do
    get edit_ultrasonic_reading_url(@ultrasonic_reading)
    assert_response :success
  end

  test "should update ultrasonic_reading" do
    patch ultrasonic_reading_url(@ultrasonic_reading), params: { ultrasonic_reading: { parking_spot_id: @ultrasonic_reading.parking_spot_id, reading: @ultrasonic_reading.reading } }
    assert_redirected_to ultrasonic_reading_url(@ultrasonic_reading)
  end

  test "should destroy ultrasonic_reading" do
    assert_difference("UltrasonicReading.count", -1) do
      delete ultrasonic_reading_url(@ultrasonic_reading)
    end

    assert_redirected_to ultrasonic_readings_url
  end
end
