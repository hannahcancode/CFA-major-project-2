Rails.application.routes.draw do
  resources :conversations do
    resources :messages
  end

  resources :enquiries
  resources :products
  resources :spaces
  resources :bookings do
    member do
      resources :charges
    end
  end
  resources :profiles
  devise_for :users

  get 'dashboard', to: 'pages#member_dashboard'
  get 'admindashboard', to: 'pages#admin_dashboard'
  get 'about', to: 'pages#about'

  scope "/admindashboard" do
    resources :users
  end

  get 'maps', to: 'pages#maps'

  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
