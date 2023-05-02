require "application_system_test_case"

class SaccosTest < ApplicationSystemTestCase
  setup do
    @sacco = saccos(:one)
  end

  test "visiting the index" do
    visit saccos_url
    assert_selector "h1", text: "Saccos"
  end

  test "should create sacco" do
    visit saccos_url
    click_on "New sacco"

    fill_in "Created by", with: @sacco.created_by
    fill_in "Email", with: @sacco.email
    check "Is active" if @sacco.is_active
    check "Is deleted" if @sacco.is_deleted
    fill_in "Name", with: @sacco.name
    fill_in "Phone", with: @sacco.phone
    click_on "Create Sacco"

    assert_text "Sacco was successfully created"
    click_on "Back"
  end

  test "should update Sacco" do
    visit sacco_url(@sacco)
    click_on "Edit this sacco", match: :first

    fill_in "Created by", with: @sacco.created_by
    fill_in "Email", with: @sacco.email
    check "Is active" if @sacco.is_active
    check "Is deleted" if @sacco.is_deleted
    fill_in "Name", with: @sacco.name
    fill_in "Phone", with: @sacco.phone
    click_on "Update Sacco"

    assert_text "Sacco was successfully updated"
    click_on "Back"
  end

  test "should destroy Sacco" do
    visit sacco_url(@sacco)
    click_on "Destroy this sacco", match: :first

    assert_text "Sacco was successfully destroyed"
  end
end
