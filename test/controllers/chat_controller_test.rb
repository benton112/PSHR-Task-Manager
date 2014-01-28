require 'test_helper'

class ChatControllerTest < ActionController::TestCase
  test "should get get_messages" do
    get :get_messages
    assert_response :success
  end

end
