require "test_helper"

class VehicleModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle_model = vehicle_models(:one)
  end

  test "should get index" do
    get vehicle_models_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_model_url
    assert_response :success
  end

  test "should create vehicle_model" do
    assert_difference("VehicleModel.count") do
      post vehicle_models_url, params: { vehicle_model: { created_by: @vehicle_model.created_by, is_active: @vehicle_model.is_active, is_deleted: @vehicle_model.is_deleted, number_of_seats: @vehicle_model.number_of_seats, plate: @vehicle_model.plate, user_id: @vehicle_model.user_id } }
    end

    assert_redirected_to vehicle_model_url(VehicleModel.last)
  end

  test "should show vehicle_model" do
    get vehicle_model_url(@vehicle_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_model_url(@vehicle_model)
    assert_response :success
  end

  test "should update vehicle_model" do
    patch vehicle_model_url(@vehicle_model), params: { vehicle_model: { created_by: @vehicle_model.created_by, is_active: @vehicle_model.is_active, is_deleted: @vehicle_model.is_deleted, number_of_seats: @vehicle_model.number_of_seats, plate: @vehicle_model.plate, user_id: @vehicle_model.user_id } }
    assert_redirected_to vehicle_model_url(@vehicle_model)
  end

  test "should destroy vehicle_model" do
    assert_difference("VehicleModel.count", -1) do
      delete vehicle_model_url(@vehicle_model)
    end

    assert_redirected_to vehicle_models_url
  end
end
