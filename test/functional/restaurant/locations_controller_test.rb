require 'test_helper'

class Restaurant::LocationsControllerTest < ActionController::TestCase
  setup do
    @restaurant_location = restaurant_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_location" do
    assert_difference('Restaurant::Location.count') do
      post :create, restaurant_location: @restaurant_location.attributes
    end

    assert_redirected_to restaurant_location_path(assigns(:restaurant_location))
  end

  test "should show restaurant_location" do
    get :show, id: @restaurant_location.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_location.to_param
    assert_response :success
  end

  test "should update restaurant_location" do
    put :update, id: @restaurant_location.to_param, restaurant_location: @restaurant_location.attributes
    assert_redirected_to restaurant_location_path(assigns(:restaurant_location))
  end

  test "should destroy restaurant_location" do
    assert_difference('Restaurant::Location.count', -1) do
      delete :destroy, id: @restaurant_location.to_param
    end

    assert_redirected_to restaurant_locations_path
  end
end
