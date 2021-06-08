Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
  get 'my_activities', to: 'activities#my_activities'
  resources :activities, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create ]
    resources :reviews, only: [ :new, :create ]
    resources :favorites, only: [:create]
  end
  resources :bookings, only: [:show, :edit, :update]
  resources :favorites, only: [ :index, :destroy ]
end


