require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get users_controller_url
    assert_response :success
  end

  test "should get top" do
    get users_top_url
    assert_response :success
  end

  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get updare" do
    get users_updare_url
    assert_response :success
  end

end
