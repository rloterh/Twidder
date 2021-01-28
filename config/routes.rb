Rails.application.routes.draw do
  resources :users,  except: [:new]
  resource :sessions, only: [:create, :destroy]

  root to: 'opinions#index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/create_opinion', to: 'opinions#create', as: :new_opinion
 end
