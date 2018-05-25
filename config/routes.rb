Rails.application.routes.draw do
  resources :vans do
    resources :bookings, only: [:create]
  end

  resources :bookings, only: [:show, :edit, :update, :destroy]

  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "pages/profile", to: "pages#profile"
end
