Rails.application.routes.draw do
  resources :vans do
    resources :bookings, only: [:create, :new]
  end
  resources :bookings, only: [:show, :destroy, :edit, :update]
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "pages/profile", to: "pages#profile"
end
