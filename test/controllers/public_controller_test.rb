require 'test_helper'

class PublicControllerTest < ActionDispatch::IntegrationTest
   test "Health check returns 200" do
     get "/public/health_check"
     assert_response  :ok
   end
end
