require "test_helper"

class RoomsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_room_url
    assert_response :success
  end

  test "should get index" do
    get rooms_url
    assert_response :success
  end
end
