# frozen_string_literal: true

Rails.application.routes.draw do
  root 'articles#index'
  resources :categories
  resources :votes, only: %i[create destroy]
  resources :articles do
    resources :votes
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
