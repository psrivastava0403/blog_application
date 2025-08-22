Rails.application.routes.draw do

  devise_for :users, controllers: {
  registrations: "users/registrations"
  }

devise_scope :user do
  get  "edit_profile",  to: "users/registrations#edit_profile",  as: :edit_profile
  put  "update_profile", to: "users/registrations#update_profile", as: :update_profile

  get  "edit_password", to: "users/registrations#edit_password", as: :edit_password
  put  "update_password", to: "users/registrations#update_password", as: :update_password
end


  resources :books
  get 'pages/home', to: 'pages#home'
  get 'pages/about', to: 'pages#about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root 'pages#home'
end
