Rails.application.routes.draw do
 # resources :opinions
  resources :users,  except: [:new]
  get '/', to: 'opinions#index', as: :root
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/create_opinion', to: 'opinions#create', as: :new_opinion
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
