Rails.application.routes.draw do
  get 'home/about'
  devise_for :users
  root 'home#top'
  resources :books
  resources :users
  post 'follow/:id' => 'relationships#follow', as: 'follow' # フォローする
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow' # フォロー外す
  get 'relationships/show'
end
