Rails.application.routes.draw do
  resources :comments
  resources :followings
  resources :users,  except: [:new]
  resource :sessions, only: [:create, :destroy]

  root to: 'opinions#index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  post '/create_opinion', to: 'opinions#create', as: :new_opinion
  get '/follow/:followed_id', to: 'followings#create', as: :follow
  delete '/:followed_id', to: 'followings#destroy', as: :unfollow
 end
