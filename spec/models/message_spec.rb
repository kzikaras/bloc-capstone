require 'rails_helper'

RSpec.describe Message, type: :model do
  it "is associated with a user" do
    message = Message.new(user_id: nil)
    expect(message).to_not be_valid
  end

  it "belongs to a chat room" do
    message = Message.new(chat_room_id: nil)
    expect(message).to_not be_valid
  end
end
