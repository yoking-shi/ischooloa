require 'test_helper'

class Admin::CookiesControllerTest < ActionDispatch::IntegrationTest
  test "should get sign_in" do
    get admin_cookies_sign_in_url
    assert_response :success
  end

end
