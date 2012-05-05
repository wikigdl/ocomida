require 'test_helper'

class Restaurant::MapsControllerTest < ActionController::TestCase
  setup do
    @restaurant_map = restaurant_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_map" do
    assert_difference('Restaurant::Map.count') do
      post :create, restaurant_map: @restaurant_map.attributes
    end

    assert_redirected_to restaurant_map_path(assigns(:restaurant_map))
  end

  test "should show restaurant_map" do
    get :show, id: @restaurant_map.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restaurant_map.to_param
    assert_response :success
  end

  test "should update restaurant_map" do
    put :update, id: @restaurant_map.to_param, restaurant_map: @restaurant_map.attributes
    assert_redirected_to restaurant_map_path(assigns(:restaurant_map))
  end

  test "should destroy restaurant_map" do
    assert_difference('Restaurant::Map.count', -1) do
      delete :destroy, id: @restaurant_map.to_param
    end

    assert_redirected_to restaurant_maps_path
  end
end
