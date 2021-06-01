Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :activities, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create ]
  end
  resources :bookings, only: [:edit, :update]
  #get 'activities/:id/bookings/new', to: 'bookings#new', as: 'booking_new'

end


