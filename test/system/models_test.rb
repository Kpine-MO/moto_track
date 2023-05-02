require "application_system_test_case"

class ModelsTest < ApplicationSystemTestCase
  setup do
    @model = models(:one)
  end

  test "visiting the index" do
    visit models_url
    assert_selector "h1", text: "Models"
  end

  test "should create model" do
    visit models_url
    click_on "New model"

    fill_in "Created by", with: @model.created_by
    check "Is active" if @model.is_active
    check "Is deleted" if @model.is_deleted
    fill_in "Number of seats", with: @model.number_of_seats
    fill_in "Plate", with: @model.plate
    fill_in "User", with: @model.user_id
    click_on "Create Model"

    assert_text "Model was successfully created"
    click_on "Back"
  end

  test "should update Model" do
    visit model_url(@model)
    click_on "Edit this model", match: :first

    fill_in "Created by", with: @model.created_by
    check "Is active" if @model.is_active
    check "Is deleted" if @model.is_deleted
    fill_in "Number of seats", with: @model.number_of_seats
    fill_in "Plate", with: @model.plate
    fill_in "User", with: @model.user_id
    click_on "Update Model"

    assert_text "Model was successfully updated"
    click_on "Back"
  end

  test "should destroy Model" do
    visit model_url(@model)
    click_on "Destroy this model", match: :first

    assert_text "Model was successfully destroyed"
  end
end
