Rails.application.routes.draw do
  resources :vans, only: [:show, :index] do
    resources :bookings, only: [:create, :new, :update]
  end

  resources :bookings, only: [:show, :index, :destroy]
  devise_for :users
  devise_for :vans
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
