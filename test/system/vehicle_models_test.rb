require "application_system_test_case"

class VehicleModelsTest < ApplicationSystemTestCase
  setup do
    @vehicle_model = vehicle_models(:one)
  end

  test "visiting the index" do
    visit vehicle_models_url
    assert_selector "h1", text: "Vehicle models"
  end

  test "should create vehicle model" do
    visit vehicle_models_url
    click_on "New vehicle model"

    fill_in "Created by", with: @vehicle_model.created_by
    check "Is active" if @vehicle_model.is_active
    check "Is deleted" if @vehicle_model.is_deleted
    fill_in "Number of seats", with: @vehicle_model.number_of_seats
    fill_in "Plate", with: @vehicle_model.plate
    fill_in "User", with: @vehicle_model.user_id
    click_on "Create Vehicle model"

    assert_text "Vehicle model was successfully created"
    click_on "Back"
  end

  test "should update Vehicle model" do
    visit vehicle_model_url(@vehicle_model)
    click_on "Edit this vehicle model", match: :first

    fill_in "Created by", with: @vehicle_model.created_by
    check "Is active" if @vehicle_model.is_active
    check "Is deleted" if @vehicle_model.is_deleted
    fill_in "Number of seats", with: @vehicle_model.number_of_seats
    fill_in "Plate", with: @vehicle_model.plate
    fill_in "User", with: @vehicle_model.user_id
    click_on "Update Vehicle model"

    assert_text "Vehicle model was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicle model" do
    visit vehicle_model_url(@vehicle_model)
    click_on "Destroy this vehicle model", match: :first

    assert_text "Vehicle model was successfully destroyed"
  end
end
