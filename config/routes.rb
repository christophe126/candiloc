Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :candidates do
    resources :bookings, only: [:new]
  end
  resources :bookings, only: %i[index update edit]
  resources :reviews, only: %i[new destroy]
end
