class ChatRoomsController < ApplicationController
    
    def index
        @chat_rooms = ChatRoom.all
    end

    def new
        @chat_room = ChatRoom.new
    end

    def create
        @chat_room = current_user.chat_rooms.build(chat_room_params)
        if @chat_room.save
            flash[:success] = 'Chat Room added!'
            redirect_to welcome_index_url
        else
            render 'new'
        end
    end

    def show
        @user = User.all
        @chat_rooms = ChatRoom.all
        @chat_room = ChatRoom.includes(:messages).find_by(id: params[:id])
        @message = Message.new
    end

    def destroy
        @chatroom = ChatRoom.find(params[:id])
        @chatroom.destroy()
        redirect_to welcome_index_url
    end

    def up_vote
        @user = User.find(params[:user_id])
        @user.votes += 1
        if @user.save
            redirect_to chat_room_path(params[:chat_room_id])
        else
            flash[:error] = 'Error up-voting'
            redirect_to chat_room_path(params[:chat_room_id])
        end
    end

    def down_vote
        @user = User.find(params[:user_id])
        @user.votes -= 1
        if @user.save
            redirect_to chat_room_path(params[:chat_room_id])
        else
            flash[:error] = 'Error up-voting'
            redirect_to chat_room_path(params[:chat_room_id])
        end
    end

    private

    def chat_room_params
        params.require(:chat_room).permit(:title)
    end
end
