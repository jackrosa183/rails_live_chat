class Message < ApplicationRecord
  belongs_to :room
  validates :content, presence: true

  after_create_commit -> { broadcast_prepend_to room, target: "messages" }
end
