require 'test_helper'

class Restaurant::CmsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get restaurant" do
    get :restaurant
    assert_response :success
  end

  test "should get menu" do
    get :menu
    assert_response :success
  end

  test "should get account" do
    get :account
    assert_response :success
  end

end
