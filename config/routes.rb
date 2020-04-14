Rails.application.routes.draw do
  get 'home/about'
  devise_for :users
  root 'home#top'
  resources :books
  resources :users
end
