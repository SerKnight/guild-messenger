Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users

  resources :users, only: [:index, :show]
  resources :messages, only: [:create]
  resources :classrooms
  get '/invite/:classroom_id/:user_id' => 'classrooms#invite_user'

  mount ActionCable.server => '/cable'
end
