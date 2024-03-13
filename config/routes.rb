Rails.application.routes.draw do
  extend Authenticator

  # authentification
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  resources :sessions, only: [:show, :destroy]
  resource :password, only: [:edit, :update]

  namespace :identity do
    resource :email, only: [:edit, :update]
    resource :email_verification, only: [:show, :create]
    resource :password_reset, only: [:new, :edit, :create, :update]
  end

  authenticate :admin do
    mount Avo::Engine, at: Avo.configuration.root_path
    mount Blazer::Engine, at: "blazer"
    mount SolidErrors::Engine, at: "/solid_errors"
    mount MissionControl::Jobs::Engine, at: "/jobs"
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # static pages
  sitepress_pages

  # resources
  namespace :user do
    resource :dashboard, only: [:show]
    resources :sessions, only: [:index]
  end

  # health check
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check

  # Defines the root path route ("/")
  root "home#show"
end
