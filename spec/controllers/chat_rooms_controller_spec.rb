require 'rails_helper'


RSpec.describe ChatRoomsController, type: :controller do
    let(:new_chat_room) { create(:chat_room) }
    
    
    
    describe "GET index" do
        it "renders the index view" do
            get :index
            expect(response).to render_template("index")
        end

    end


end
