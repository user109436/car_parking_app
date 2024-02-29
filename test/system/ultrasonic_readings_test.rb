require "application_system_test_case"

class UltrasonicReadingsTest < ApplicationSystemTestCase
  setup do
    @ultrasonic_reading = ultrasonic_readings(:one)
  end

  test "visiting the index" do
    visit ultrasonic_readings_url
    assert_selector "h1", text: "Ultrasonic readings"
  end

  test "should create ultrasonic reading" do
    visit ultrasonic_readings_url
    click_on "New ultrasonic reading"

    fill_in "Parking spot", with: @ultrasonic_reading.parking_spot_id
    fill_in "Reading", with: @ultrasonic_reading.reading
    click_on "Create Ultrasonic reading"

    assert_text "Ultrasonic reading was successfully created"
    click_on "Back"
  end

  test "should update Ultrasonic reading" do
    visit ultrasonic_reading_url(@ultrasonic_reading)
    click_on "Edit this ultrasonic reading", match: :first

    fill_in "Parking spot", with: @ultrasonic_reading.parking_spot_id
    fill_in "Reading", with: @ultrasonic_reading.reading
    click_on "Update Ultrasonic reading"

    assert_text "Ultrasonic reading was successfully updated"
    click_on "Back"
  end

  test "should destroy Ultrasonic reading" do
    visit ultrasonic_reading_url(@ultrasonic_reading)
    click_on "Destroy this ultrasonic reading", match: :first

    assert_text "Ultrasonic reading was successfully destroyed"
  end
end
