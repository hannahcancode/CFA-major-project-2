Rails.application.routes.draw do
  resources :spaces
  resources :bookings do
    member do
        end
  end
  resources :profiles
  devise_for :users
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
