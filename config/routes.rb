Rails.application.routes.draw do
  root "pages#home"
  
  get "about", to: "pages#about"
  get "articles", to: "articles#index"

  resources :articles

  get 'signup', to: 'users#new'
  #post 'users', to: 'users#create'
  resources :users, except: [:new]

  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"
  #delete "logout", to: "sessions#destroy"
end
