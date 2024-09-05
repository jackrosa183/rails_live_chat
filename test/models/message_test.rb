require "test_helper"

class MessageTest < ActiveSupport::TestCase
  test "message must have content" do
    room = Room.last
    message = Message.create(room_id: room.id)
    assert_not message.save()

    message = Message.create(content: "Hello World", room_id: room.id)
  end
end
