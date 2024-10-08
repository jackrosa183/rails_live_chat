require "application_system_test_case"

class UserCreatesNewRoomsTest < ApplicationSystemTestCase
  test "creating a new room" do
    visit rooms_url
    click_button("+")
    fill_in("Name", with: "test room")
    click_button("Create Room")
    assert_selector "div", text: "test room"
  end
end
