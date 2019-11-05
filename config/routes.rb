Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :chat_rooms
    resources :messages

    root to: "users#index"
  end

  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :chat_rooms, only: [:new, :create, :destroy, :show, :index, :post] do
    resources :messages, only: [:new, :create, :show, :index, :post]
    put '/up-vote' => 'chat_rooms#up_vote', as: :up_vote
    put '/down-vote' => 'chat_rooms#down_vote', as: :down_vote
    post '/new_message' => 'chat_rooms#new_message', as: :new_message
  end

  resources :pages

  resources :contact_form
  
  root 'welcome#index'
end
