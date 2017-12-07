Rails.application.routes.draw do
  get 'welcome/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :chat_rooms, only: [:new, :create, :show, :index, :post] do
    resources :messages, only: [:new, :create, :show, :index, :post]
  end
  
  
  root 'welcome#index'
end
