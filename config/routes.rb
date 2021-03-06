Rails.application.routes.draw do
  get 'friendships/create'

  get 'sessions/new'

  get "login" => "sessions#new"
  post "login" => "sessions#create"
  get "logout" => "sessions#destroy"
  resources :users
  resources :friendships

  root 'home#index'
  post 'remove_friend' => "friendships#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
