Eventpal::Application.routes.draw do

  post "events/create_food"

  get "events/create"

  get "events/show"

  get "events/index"

  resources :events
  resources :foods
  resources :users

  root :to => 'events#index'

 
end
