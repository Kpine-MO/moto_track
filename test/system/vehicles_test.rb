require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "should create vehicle" do
    visit vehicles_url
    click_on "New vehicle"

    fill_in "Created by", with: @vehicle.created_by
    check "Is active" if @vehicle.is_active
    check "Is deleted" if @vehicle.is_deleted
    fill_in "Model", with: @vehicle.model
    fill_in "Number of seats", with: @vehicle.number_of_seats
    fill_in "Plate", with: @vehicle.plate
    fill_in "User", with: @vehicle.user_id
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "should update Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Edit this vehicle", match: :first

    fill_in "Created by", with: @vehicle.created_by
    check "Is active" if @vehicle.is_active
    check "Is deleted" if @vehicle.is_deleted
    fill_in "Model", with: @vehicle.model
    fill_in "Number of seats", with: @vehicle.number_of_seats
    fill_in "Plate", with: @vehicle.plate
    fill_in "User", with: @vehicle.user_id
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Destroy this vehicle", match: :first

    assert_text "Vehicle was successfully destroyed"
  end
end
