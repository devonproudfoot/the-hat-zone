Rails.application.routes.draw do

  devise_for :users
  get 'home', to: 'pages#home'
  root 'pages#home'

  get 'about', to: 'pages#about'

  resources :hats, only: [:show, :index, :new, :create]

end
