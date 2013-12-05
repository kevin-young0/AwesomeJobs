require 'test_helper'

class AdminPageControllerTest < ActionController::TestCase
  test "should get admin" do
    @request.env["HTTP_AUTHORIZATION"] = "Basic " + Base64::encode64("admin:secret")
   get :admin
     assert_response :success
    
 end

end