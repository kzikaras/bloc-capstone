class WelcomeController < ApplicationController
  def index
    @chat_rooms = ChatRoom.all
    @user = User.all
  end
end
