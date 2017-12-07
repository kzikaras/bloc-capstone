class MessagesController < ApplicationController
    skip_before_action :verify_authenticity_token, raise: false

    def index
        @messages = Message.all
    end

    def new
        @message = Message.new
        @chat_room = ChatRoom.find(params[:chat_room_id])
    end

    def create
        @message = current_user.messages.new(messages_params)
        @chat_room = ChatRoom.find(params[:chat_room_id])
        @message.chat_room = @chat_room
        if @message.save
            flash[:sucess] = "Message saved!"
            redirect_to @chat_room
        else
            render 'new'
        end

    end

    def show
    end

    private

    def messages_params
        params.require(:message).permit(:body)
    end

end
