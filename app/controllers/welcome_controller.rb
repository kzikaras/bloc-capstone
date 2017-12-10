class WelcomeController < ApplicationController
  def index
    @chat_rooms = ChatRoom.all
    @user = User.all
    @num_instructors = User.where(instructor: true).count
  end

  
end
