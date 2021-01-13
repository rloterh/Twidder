Rails.application.routes.draw do
  resources :opinions
  resources :users
  get '/', to: 'opinions#index', as: :root
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
