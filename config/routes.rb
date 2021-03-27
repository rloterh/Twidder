Rails.application.routes.draw do
  resources :likes
  resources :followings
  resources :users,  except: [:new]
  resource :sessions, only: [:create, :destroy]
  resources :opinions, only: [:index, :create] do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
  end

  root to: 'opinions#index'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  get '/tlogin', to: 'sessions#tnew'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/create_opinion', to: 'opinions#create', as: :new_opinion
  get '/follow/:followed_id', to: 'followings#create', as: :follow
  delete '/:followed_id', to: 'followings#destroy', as: :unfollow
  get '/reply', to: 'comments#new', as: :new_reply
 end
