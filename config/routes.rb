Eventpal::Application.routes.draw do

  devise_for :users, :controllers => {:confirmations => 'confirmations'}

devise_scope :user do
  put "/confirm" => "confirmations#confirm"
end
  
  get "/confirm" => "confirmations#show"

  get "confirmations/show"

  get "confirmations/confirm"

  post "events/create_food"

  get "events/create"

  get "events/show"

  get "events/index"

  resources :events
  resources :foods
  resources :users

  root :to => 'events#index'

 
end
