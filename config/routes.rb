Rails.application.routes.draw do
  resources :jams
  get 'home/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  get 'players/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
