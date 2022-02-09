Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :candidates, only: %i[index show new create update destroy] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index update edit] do
    resources :reviews, only: %i[new create]
  end
end
