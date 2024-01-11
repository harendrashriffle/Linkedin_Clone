Rails.application.routes.draw do

  root to: "user#index"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_scope :user do
    # get 'users/sign_in', to: 'devise/sessions#new'
    get 'users/sign_out', to: 'devise/sessions#destroy'
  end


  # resources :users
  resources :posts
  resources :comments
  resources :like
  resources :education
  resources :experience
end
