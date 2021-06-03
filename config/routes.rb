Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  resources :activities, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create ]
  end
  resources :bookings, only: [:edit, :update]
end


