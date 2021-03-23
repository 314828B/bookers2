Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users
  get 'home/about' , to: 'homes#about', as: 'home/about'
  root to: 'homes#top'

end
