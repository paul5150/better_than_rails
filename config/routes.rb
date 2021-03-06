Rails.application.routes.draw do
  root 'application#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :auths
  resources :categories, only: [:show, :index] do
    resources :items
    resources :votes, only: [:create]
  end
end
