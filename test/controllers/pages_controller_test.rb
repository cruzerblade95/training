require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get login_create" do
    get pages_login_create_url
    assert_response :success
  end

  test "should get login_destroy" do
    get pages_login_destroy_url
    assert_response :success
  end

end
