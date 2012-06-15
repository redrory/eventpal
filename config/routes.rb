Eventpal::Application.routes.draw do

  get "events/create"

  get "events/show"

  get "events/index"

  resources :events

  root :to => 'events#index'

 
end
