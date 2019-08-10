Rails.application.routes.draw do

  get "/pages/:page" => "pages#show"
  root 'pages#show',  page: 'home'

  resources :hats, only: [:show, :index, :new, :create]

end
