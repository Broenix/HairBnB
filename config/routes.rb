Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :wigs, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:index]

  namespace :owner do
    resources :bookings, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
    resources :wigs, only: [:index]
  end
end
