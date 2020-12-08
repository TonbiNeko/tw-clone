require 'test_helper'

class JweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jweets_index_url
    assert_response :success
  end

end
