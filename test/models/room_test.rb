require "test_helper"

class RoomTest < ActiveSupport::TestCase
  test "Room must have a name" do
    room = Room.create
    assert_not room.save

    room = Room.create(name: "my room")
    assert room.save
  end
end
