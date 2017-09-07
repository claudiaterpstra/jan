Rails.application.routes.draw do
  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'koor', to: 'pages#koor'
  get 'piano', to: 'pages#piano'
  get 'didjeridu', to: 'pages#didjeridu'

  resources "contacts", only: [:new, :create]
end
