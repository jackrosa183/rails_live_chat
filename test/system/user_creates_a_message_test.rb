require "application_system_test_case"

class UserCreatesAMessageTest < ApplicationSystemTestCase
  test "User creates a message" do
    visit rooms_url
    click_button("+")
    fill_in("Name", with: "test room")
    click_button("Create Room")
    assert_selector "div", text: "test room"
    click_link("test room")
    fill_in("message[content]", with: "my test message")
    click_button("Send")
    assert_selector "div", text: "my test message"
    assert_selector "div", text: "Sent at:"
  end
end
