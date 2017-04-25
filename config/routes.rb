Rails.application.routes.draw do
  resources :enquiries
  resources :products
  resources :spaces
  resources :bookings do
    member do
        end
  end
  resources :profiles
  devise_for :users
  get 'hostdashboard', to: 'pages#host_dashboard'
  get 'guestdashboard', to: 'pages#guest_dashboard'
  get 'admindashboard', to: 'pages#admin_dashboard'

  scope "/admindashboard" do
    resources :users
  end

  get 'maps', to: 'pages#maps'

  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
