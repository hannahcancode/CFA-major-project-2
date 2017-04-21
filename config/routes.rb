Rails.application.routes.draw do
  resources :conversations do
    resources :messages
  end
  resources :products
  resources :spaces
  resources :bookings do
    member do
      resources :transactions
    end
  end
  resources :profiles
  devise_for :users
  get 'hostdashboard', to: 'pages#host_dashboard'
  get 'guestdashboard', to: 'pages#guest_dashboard'
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
