require "test_helper"

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rooms_new_url
    assert_response :success
  end

  test "should get create" do
    get rooms_create_url
    assert_response :success
  end
end
