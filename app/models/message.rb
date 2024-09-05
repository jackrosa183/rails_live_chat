class Message < ApplicationRecord
  belongs_to :room

  after_create_commit -> { broadcast_prepend_to room, target: "messages" }
end
