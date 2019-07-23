Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]
  get '/sign_in', to: 'sessions#new'
  post '/sign_in', to: 'sessions#create'
  
end