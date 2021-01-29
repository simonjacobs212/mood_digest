require "test_helper"

class UserMoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_moods_index_url
    assert_response :success
  end

  test "should get show" do
    get user_moods_show_url
    assert_response :success
  end
end
