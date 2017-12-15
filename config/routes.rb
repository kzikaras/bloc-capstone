Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :chat_rooms, only: [:new, :create, :show, :index, :post] do
    resources :messages, only: [:new, :create, :show, :index, :post]
    put '/up-vote' => 'chat_rooms#up_vote', as: :up_vote
    put '/down-vote' => 'chat_rooms#down_vote', as: :down_vote
  end


  
  
  
  
  root 'welcome#index'
end
